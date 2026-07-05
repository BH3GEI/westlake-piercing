#include "androidfw/AssetManager2.h"
#include "androidfw/ApkAssets.h"
#include "androidfw/ResourceTypes.h"
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>
using namespace android;
static std::string t16(const char16_t* p, size_t n){ std::string s; for(size_t i=0;i<n;i++) s.push_back((char)(p[i]&0x7f)); return s; }
int main(int argc, char** argv) {
  auto apk = ApkAssets::Load(argv[1], 0);
  if (!apk) { printf("LOAD_FAIL\n"); return 1; }
  AssetManager2 am;
  std::vector<AssetManager2::ApkAssetsPtr> list{apk};
  am.SetApkAssets(AssetManager2::ApkAssetsList(list.data(), list.size()), true);
  int total=0; std::vector<std::pair<uint32_t,std::string>> mains;
  for (uint32_t type=1; type<0x40; type++) {
    for (uint32_t e=0; e<0x600; e++) {
      uint32_t rid = 0x7f000000 | (type<<16) | e;
      auto nm = am.GetResourceName(rid);
      if (!nm.has_value()) continue;
      std::string ty = nm->type && nm->type_len ? std::string(nm->type,nm->type_len)
                       : (nm->type16 && nm->type_len ? t16(nm->type16,nm->type_len) : "");
      if (ty != "layout") continue;
      std::string en = nm->entry && nm->entry_len ? std::string(nm->entry,nm->entry_len)
                       : (nm->entry16 && nm->entry_len ? t16(nm->entry16,nm->entry_len) : "");
      total++;
      if (en.find("main")!=std::string::npos || en.find("home")!=std::string::npos ||
          en.find("activity")!=std::string::npos || en.find("core")!=std::string::npos ||
          en.find("splash")!=std::string::npos)
        mains.push_back({rid,en});
    }
  }
  printf("LAYOUTS_TOTAL=%d main-ish=%zu\n", total, mains.size());
  for (auto& m : mains) { printf("  0x%x %s\n", m.first, m.second.c_str()); if(&m-&mains[0]>=25) break; }
  return 0;
}
