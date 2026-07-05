// Parse a test.apk layout via libandroidfw and dump "depth|tag|w|h" lines (the node tree).
#include "androidfw/AssetManager2.h"
#include "androidfw/ApkAssets.h"
#include "androidfw/ResourceTypes.h"
#include <cstdio>
#include <string>
#include <vector>
using namespace android;
static std::string t16(const char16_t* p, size_t n){ std::string s; for(size_t i=0;i<n;i++) s.push_back((char)(p[i]&0x7f)); return s; }
// android:layout_width=0x010100f4  layout_height=0x010100f5  (-1=match_parent -2=wrap_content else dim)
static int attrDim(ResXMLParser& p, uint32_t want){
  size_t n=p.getAttributeCount();
  for(size_t i=0;i<n;i++){ if(p.getAttributeNameResID(i)==want){ Res_value v; if(p.getAttributeValue(i,&v)>=0) return (int)v.data; } }
  return -999;
}
int main(int argc, char** argv){
  auto apk=ApkAssets::Load(argv[1],0); if(!apk){printf("LOAD_FAIL\n");return 1;}
  AssetManager2 am; std::vector<AssetManager2::ApkAssetsPtr> list{apk};
  am.SetApkAssets(AssetManager2::ApkAssetsList(list.data(),list.size()),true);
  uint32_t hid=argc>2?(uint32_t)strtoul(argv[2],0,16):0x7f0e00ac;
  auto sv=am.GetResource(hid,false,0); if(!sv.has_value()){printf("NO_RES\n");return 1;}
  AssetManager2::SelectedValue v=*sv;
  const ResStringPool* pool=am.GetStringPoolForCookie(v.cookie); if(!pool){printf("NO_POOL\n");return 1;}
  auto p8=pool->string8At(v.data); if(!p8.has_value()){printf("NO_PATH\n");return 1;}
  std::string path(p8->data(),p8->size());
  auto asset=am.OpenNonAsset(path,v.cookie,Asset::AccessMode::ACCESS_RANDOM); if(!asset){printf("OPEN_FAIL\n");return 1;}
  auto buf=asset->getIncFsBuffer(true); size_t len=asset->getLength();
  if(buf.unsafe_ptr()==nullptr||len==0){printf("EMPTY\n");return 1;}
  ResXMLTree tree(am.GetDynamicRefTableForCookie(v.cookie));
  if(tree.setTo(buf.unsafe_ptr(),len,true)!=NO_ERROR){printf("XML_FAIL\n");return 1;}
  ResXMLParser p(tree); p.restart();
  int depth=0,tags=0; ResXMLParser::event_code_t ev;
  while((ev=p.next())!=ResXMLParser::END_DOCUMENT && ev!=ResXMLParser::BAD_DOCUMENT){
    if(ev==ResXMLParser::START_TAG){
      size_t nl; const char16_t* nm=p.getElementName(&nl);
      std::string tag=t16(nm,nl);
      size_t dot=tag.rfind('.'); if(dot!=std::string::npos) tag=tag.substr(dot+1); // short name
      int w=attrDim(p,0x010100f4), h=attrDim(p,0x010100f5);
      printf("%d|%s|%d|%d\n", depth, tag.c_str(), w, h);
      depth++; if(++tags>200) break;
    } else if(ev==ResXMLParser::END_TAG){ if(depth>0)depth--; }
  }
  return 0;
}
