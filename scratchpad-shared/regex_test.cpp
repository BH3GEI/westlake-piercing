#include <regex>
#include <string>
#include <vector>
#include <cstdio>
struct T{const char*cat;const char*java;const char*sanitized;};
int tryc(const std::string&p){try{std::regex r(p,std::regex::ECMAScript);return 0;}catch(const std::regex_error&e){return 1;}}
int main(){
  std::vector<T> ts={
    {"A POSIX", "\\p{Alnum}+",              "[A-Za-z0-9]+"},
    {"A POSIX", "[\\p{Alpha}0-9]",          "[A-Za-z0-9]"},
    {"A POSIX", "\\p{Punct}",               "[!-/:-@\\[-`{-~]"},
    {"C \\Q\\E","\\Qa.b*c\\E",              "a\\.b\\*c"},
    {"H named", "(?<year>\\d{4})",          "(\\d{4})"},
    {"H nameref","(?<y>\\d)\\k<y>",         "(\\d)\\1"},
    {"F \\v",   "\\v+",                     "[\\n\\x0B\\f\\r]+"},
    {"F \\h",   "\\h+",                     "[ \\t]+"},
    {"F \\R",   "a\\Rb",                    "a(?:\\r\\n|[\\n\\r])b"},
    {"E possess","a++",                     "a+"},
    {"E atomic","(?>abc)",                  "(?:abc)"},
    {"D anchor","\\Aabc\\z",                "^abc$"},
    {"G inline","(?i)abc",                  "abc"},
    {"B uniprop","\\p{L}+",                 "[^\\W\\d_]+"},
    {"real-crashlytics","[\\p{Alnum}._%+-]+@[\\p{Alnum}.-]+","[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+"},
  };
  int jbad=0,sok=0;
  printf("%-16s %-6s %-6s\n","category","raw","sanit");
  for(auto&t:ts){
    int jr=tryc(t.java), sr=tryc(t.sanitized);
    printf("%-16s %-6s %-6s  raw=%s\n",t.cat, jr?"THROW":"ok", sr?"THROW":"ok", t.java);
    if(jr)jbad++; if(!sr)sok++;
  }
  printf("\n原始 Java pattern 抛异常(std::regex 拒绝): %d/%zu\n清洗后通过: %d/%zu\n",jbad,ts.size(),sok,ts.size());
  return 0;
}
