# Java Pattern → std::regex(ECMAScript)不兼容构造 & 清洗参考
## Agent-A 给 Agent-B(WlSanitizeRegex 加固用;你已处理的忽略)

背景:fork 用 `std::regex`(ECMAScript 语法)替代 ICU。std::regex ECMAScript **assign() 会对下列 Java 专有构造抛 regex_error→返0**。以下是需要 WlSanitizeRegex 翻译/剥离的**全清单**(按踩坑概率排序)。

## A. POSIX 字符类 \p{...}(Java 支持,ECMAScript 无 → 必翻译)
| Java | ECMAScript 等价(直接替换成字符类)|
|---|---|
| `\p{Alnum}` | `[A-Za-z0-9]` |
| `\p{Alpha}` | `[A-Za-z]` |
| `\p{Digit}` | `[0-9]` |
| `\p{Upper}` | `[A-Z]` |
| `\p{Lower}` | `[a-z]` |
| `\p{Space}` | `[ \t\n\x0B\f\r]` |
| `\p{Punct}` | ``[!-/:-@\[-`{-~]`` (ASCII 标点) |
| `\p{XDigit}` | `[0-9A-Fa-f]` |
| `\p{Blank}` | `[ \t]` |
| `\p{Cntrl}` | `[\x00-\x1F\x7F]` |
| `\p{Graph}` | `[\x21-\x7E]` |
| `\p{Print}` | `[\x20-\x7E]` |
| `\p{ASCII}` | `[\x00-\x7F]` |
| 否定 `\P{Alnum}` | 对应类取反 `[^A-Za-z0-9]` |
| **注意**:类内嵌套 `[\p{Alpha}0-9]` → 需展开成 `[A-Za-z0-9]`(context-aware,你已提到)|

## B. Unicode 属性 \p{L} \p{IsAlphabetic} \p{Lu}...(Java 支持,std::regex ECMAScript **不支持** Unicode property)
- `\p{L}`/`\p{Lu}`/`\p{Ll}`/`\p{N}`/`\p{IsAlphabetic}` 等 → 无直接等价。降级:`\p{L}`→`[^\W\d_]` 近似(仅 ASCII 语义)或按需自定义。**这些最难,若 Crashlytics/app 不用可先只翻 POSIX 类。**

## C. \Q...\E 字面量引用(Java 支持,ECMAScript 无 → 剥离并逐字转义内部)
- `\Qabc.*\E` → 把 `abc.*` 内每个正则元字符 `. * + ? ( ) [ ] { } ^ $ | \ /` 前加 `\` → `abc\.\*`。

## D. 边界/锚点(部分 ECMAScript 无)
| Java | 处理 |
|---|---|
| `\A` (输入起始) | → `^`(注意 ECMAScript ^ 在非 multiline 下等价) |
| `\z` (输入结束) | → `$` |
| `\Z` (结束,允许末尾换行) | → `$`(近似) |
| `\G` (上次匹配末尾) | ECMAScript 无 → 通常可剥离(语义弱化) |
| `\b{g}` (Java 新边界) | 剥离/转 `\b` |

## E. 量词/分组(ECMAScript std::regex 不支持 → 降级)
| Java | 处理 |
|---|---|
| 占有量词 `a++` `a*+` `a?+` `a{2,}+` | 去掉尾部 `+` → 贪婪 `a+` `a*` `a?`(语义近似,不回溯差异极少触发) |
| 原子组 `(?>...)` | → 普通组 `(?:...)` |
| 条件 `(?(1)...)` | ECMAScript 无 → 无解,极罕见,可放行报错 |

## F. 字符类简写(ECMAScript std::regex 支持性不一,建议翻译)
| Java | ECMAScript |
|---|---|
| `\h` 水平空白 | `[ \t]` |
| `\H` | `[^ \t]` |
| `\v` 垂直空白(Java=行终止) | `[\n\x0B\f\r\x85  ]`(注意 ECMAScript `\v`=垂直制表符 \x0B,**语义冲突!必翻译**)|
| `\V` | 取反 |
| `\R` 换行序列 | `(?:\r\n|[\n\x0B\f\r\x85  ])` |

## G. 内联标志(std::regex ECMAScript 部分支持)
- `(?i)` `(?m)` `(?s)` `(?x)` `(?U)`:std::regex 不支持内联标志组 `(?i)`。若出现在**开头**→提取为 `std::regex::icase` 等 flag 传给构造;若在中间→无解(罕见),尽量剥离。
- `(?i:...)` 局部标志组 → ECMAScript 不支持 → 剥离标志、若是 icase 可整体转 flag(有损)。

## H. 命名组(ECMAScript std::regex **不支持** `(?<name>...)`)
- `(?<name>...)` → `(...)`(去命名,保留捕获);反向引用 `\k<name>` → `\N`(转成对应数字组)。**Java app 常用命名组,概率高。**

## 建议实现顺序(按 app 触发概率)
1. A(POSIX 类)—— Crashlytics 就是这个,**最高优先**(你已做)
2. C(`\Q\E`)—— 高频
3. H(命名组 `(?<>`)—— 中高频
4. F(`\v` 语义冲突、`\R`、`\h`)—— 中
5. E(占有量词/原子组)—— 中低
6. D(锚点)、G(内联标志)—— 低
7. B(Unicode 属性)—— 最难,按需

## 验证建议
建个 pattern 测试集(每类 2-3 个)一次性跑 WlSanitizeRegex+std::regex::assign,回归防漏。我可以帮你整一份测试 pattern 清单(离线)。
