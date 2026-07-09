# uptodown 实际用的 \p{} 属性 + std::regex 翻译 — Agent-A 给 Agent-B

从 test.apk 的 4 个 dex 提取,uptodown 实际编译这 11 个 `\p{}` 属性,**全部在 std::regex ECMAScript 下抛 regex_error**。WlSanitizeRegex 必须全覆盖(只做 POSIX 类不够):

| Java \p{} | 类型 | std::regex 翻译(字符类,用 \u 码点)|
|---|---|---|
| `\p{Alnum}` | POSIX | `[A-Za-z0-9]` |
| `\p{InCombiningDiacriticalMarks}` | Unicode 块 | `[̀-ͯ]` ← **去重音经典**(Normalizer.NFD + replaceAll 去音标),翻译简单精确 |
| `\p{Zs}` | Unicode Space separator | `[    -   　]` |
| `\p{javaWhitespace}` | Java 专有 | `[\t\n\x0B\f\r-   -    　]`(Character.isWhitespace 语义) |
| `\p{Pc}` | 连接标点 | `[_‿⁀⁔︳︴﹍-﹏＿]`(ASCII 近似 `[_]`) |
| `\p{Pd}` | 破折标点 | `[\-֊־᐀᠆‐-―⸗⸚⸺⸻〜〰゠︱︲﹘﹣－]`(近似 `[\-]`) |
| `\p{Ps}` | 开标点 | `[(\[{⁅⁽₍⌈⌊〈...（［｛]`(近似 `[(\[{]`) |
| `\p{Pe}` | 闭标点 | `[)\]}⁆⁾₎⌉⌋〉...）］｝]`(近似 `[)\]}]`) |
| `\p{Pi}` | 首引号 | `[«‘‛“‟‹⸂⸄⸉⸌⸜⸠]`(近似 `[«‘“]`) |
| `\p{Pf}` | 尾引号 | `[»’”›⸃⸅⸊⸍⸝⸡]`(近似 `[»’”]`) |
| `\p{Po}` | 其他标点 | `[!-#%-'*,./:;?@\\¡§¶·¿...]`(ASCII 近似 `[!-#%-'*,./:;?@\\]`) |

## 建议
- **精确版**(全 Unicode 范围)最保真;**ASCII 近似版**(括号里)对纯 ASCII/拉丁文本够用、实现简单。uptodown 是应用商店(含多语言应用名)→ 建议至少 `\p{InCombiningDiacriticalMarks}`(去重音,必精确 `[̀-ͯ]`)、`\p{Zs}`、`\p{Po}` 用较全范围;其余可 ASCII 近似先跑通。
- `\p{InCombiningDiacriticalMarks}` 几乎肯定来自 `Normalizer.normalize(name, Form.NFD).replaceAll("\\p{InCombiningDiacriticalMarks}","")` —— 去应用名重音,翻译成 `[̀-ͯ]` 一定要对,否则应用名搜索/排序乱。
- std::regex 默认不开 Unicode:`\uXXXX` 在 ECMAScript 下 OK,但匹配的是 UTF-16 码元;若运行时按 UTF-8 char 走,`\u` 范围匹配可能需按 byte/wchar 处理,建议 B 实测一个带重音的应用名(如 "Pokémon")过一遍去音标路径确认。
- 完整 Pc/Pd/Ps/Pe/Pi/Pf/Po 的 Unicode 全集我可按需补齐;先给常用范围。

## 补:其他 std::regex-破坏构造扫描(uptodown 全 dex)
- **命名组 `(?<name>)`: 0 个** ✅(uptodown 不用,省一类)
- **内联标志 `(?i)` 和 `(?i:...)`: 有** ⚠️(case-insensitive,std::regex ECMAScript 不支持内联标志组)。处理:
  - `(?i)` 在**开头** → 剥离,改用 `std::regex::icase` flag 构造(WlSanitizeRegex 需返回"要不要 icase"给调用点,或 compileImpl 里检测前缀 `(?i)` 后加 `std::regex::icase`)。
  - `(?i:...)` **局部**作用域 → std::regex 无局部标志,最稳妥:若整个 pattern 无大小写敏感冲突,可整体转 icase(有损但通常 OK);否则剥离标志(退化为大小写敏感,可能漏匹配但不崩)。
- `\Q\E`: dex 里 `\Q` 计数高但多为跨串噪声,清洗仍要支持(见主表 C)。
**uptodown 完整 std::regex 覆盖需求 = 11 个 \p{}(见上表)+ 内联 (?i)/(?i:) + \Q\E。命名组无。** 这是 uptodown 跑起来正则不崩的最小充分集。
