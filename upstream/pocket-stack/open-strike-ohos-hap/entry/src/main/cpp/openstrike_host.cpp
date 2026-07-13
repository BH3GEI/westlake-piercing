#include <atomic>
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <mutex>
#include <string>
#include <vector>
#include <unistd.h>
#include <pthread.h>
#include <time.h>

#include <EGL/egl.h>
#include <GLES3/gl3.h>
#include <ace/xcomponent/native_interface_xcomponent.h>
#include <hilog/log.h>
#include <napi/native_api.h>
#include <native_window/external_window.h>

#define LOGI(...) OH_LOG_Print(LOG_APP, LOG_INFO, 0xD00D, "OPENSTRIKE", __VA_ARGS__)
#define LOGE(...) OH_LOG_Print(LOG_APP, LOG_ERROR, 0xD00D, "OPENSTRIKE", __VA_ARGS__)

extern "C" {
void ui_init();
int32_t ui_create_node(uint32_t);
void ui_destroy_node(int32_t);
void ui_insert_before(int32_t, int32_t, int32_t);
void ui_remove_child(int32_t, int32_t);
void ui_set_style(int32_t, int32_t);
void ui_set_prop(int32_t, uint32_t, double);
void ui_set_text(int32_t, const uint8_t*, size_t);
void ui_replace_text(int32_t, const uint8_t*, size_t);
int32_t ui_upload_texture(const uint8_t*, size_t, uint32_t, uint32_t, uint32_t);
void ui_set_image(int32_t, int32_t);
void ui_set_sprite(int32_t, int32_t, uint32_t, uint32_t, uint32_t);
int32_t ui_animate(int32_t, uint32_t, double, uint32_t, uint32_t, uint32_t);
void ui_cancel_anim(int32_t);
void ui_set_focus(int32_t);
int32_t ui_load_styles(const uint8_t*, size_t);
int32_t ui_load_font_atlas(const uint8_t*, size_t);
float ui_measure_text(const uint8_t*, size_t, uint32_t);
void ui_tick();
const uint8_t* ui_render();
struct OpenStrikeSnapshot {
    float x, y, z, yaw, pitch, time, recoil;
    uint32_t ammo, reserve;
    int32_t health;
    uint32_t fired, phase, alive, reloading;
    float reload_frac;
    uint32_t alive_bots, total_bots, wins, losses;
    float speed;
    float vel_y; uint32_t on_ground, fly_mode; float ground_dist;
};
void openstrike_init();
void openstrike_tick(float, float, float, uint32_t, uint32_t, uint32_t);
void openstrike_look(float, float);
void openstrike_snapshot(OpenStrikeSnapshot*);
void openstrike_set_phase(uint32_t);
void openstrike_reset_round();
void openstrike_add_win();
void openstrike_add_loss();
void openstrike_set_bot_count(uint32_t);
void openstrike_configure_weapon(uint32_t,uint32_t,float,float,int32_t,int32_t);
void openstrike_configure_bots(uint32_t,float,float,int32_t,int32_t);
struct P3dBatch { uint32_t texture,kind,vert_base,index_base,index_count; };
struct P3dTexture { uint32_t width,height,masked; const uint8_t* rgba; };
const uint8_t* openstrike_p3d_vertices(uint32_t*);
const uint16_t* openstrike_p3d_indices(uint32_t*);
uint32_t openstrike_p3d_batch_count();
uint32_t openstrike_p3d_batch(uint32_t,P3dBatch*);
uint32_t openstrike_p3d_texture_count();
uint32_t openstrike_p3d_texture(uint32_t,P3dTexture*);
struct BotSnapshot { float x,y,z,yaw,death_time; uint32_t alive; };
const float* openstrike_soldier_vertices(uint32_t*);
const uint16_t* openstrike_soldier_indices(uint32_t*,uint32_t*);
uint32_t openstrike_bot_count();
uint32_t openstrike_bot_snapshot(uint32_t,BotSnapshot*);
}

namespace {
constexpr uint32_t BTN_UP = 0x0010;
constexpr uint32_t BTN_RIGHT = 0x0020;
constexpr uint32_t BTN_DOWN = 0x0040;
constexpr uint32_t BTN_LEFT = 0x0080;
constexpr uint32_t BTN_LTRIGGER = 0x0100;
constexpr uint32_t BTN_RTRIGGER = 0x0200;
constexpr uint32_t BTN_TRIANGLE = 0x1000;
constexpr uint32_t BTN_CIRCLE = 0x2000;
constexpr uint32_t BTN_CROSS = 0x4000;
constexpr uint32_t BTN_SQUARE = 0x8000;
constexpr int FB_W = 480;
constexpr int FB_H = 272;

std::mutex g_coreMutex;
std::atomic<uint32_t> g_pendingButton{0};
std::atomic<uint32_t> g_heldButton{0};
std::atomic<uint32_t> g_pendingAnalog{0x8080};
std::atomic<bool> g_booted{false};
std::atomic<uint32_t> g_createCount{0};
std::atomic<uint32_t> g_styleLoadCount{0};
napi_env g_env = nullptr;

struct RenderContext {
    OHNativeWindow* window = nullptr;
    uint64_t width = 0;
    uint64_t height = 0;
    EGLDisplay display = EGL_NO_DISPLAY;
    EGLSurface surface = EGL_NO_SURFACE;
    EGLContext context = EGL_NO_CONTEXT;
    GLuint program = 0;
    GLuint texture = 0;
    GLint position = -1;
    GLint texCoord = -1;
    GLuint worldProgram = 0;
    GLuint worldVbo = 0;
    GLuint worldIbo = 0;
    GLint worldPos = -1, worldUv = -1, worldColor = -1, worldMvp = -1, worldMasked = -1;
    std::vector<GLuint> worldTextures;
    uint32_t worldBatchCount = 0;
    GLuint botProgram = 0, botVbo = 0, botIbo = 0;
    GLint botPos = -1, botMvp = -1, botColor = -1;
    uint32_t botIndexCount = 0, botBodyIndexCount = 0;
    std::atomic<bool> running{false};
    pthread_t thread{};
    float downX = 0;
    float downY = 0;
    float lastX = 0;
    float lastY = 0;
    int32_t lookPointerId = -1;
};
RenderContext g_render;

bool getI32(napi_env env, napi_value value, int32_t& out) {
    return napi_get_value_int32(env, value, &out) == napi_ok;
}
bool getU32(napi_env env, napi_value value, uint32_t& out) {
    return napi_get_value_uint32(env, value, &out) == napi_ok;
}
bool getDouble(napi_env env, napi_value value, double& out) {
    return napi_get_value_double(env, value, &out) == napi_ok;
}
napi_value undefined(napi_env env) { napi_value v; napi_get_undefined(env, &v); return v; }
napi_value number(napi_env env, int32_t value) { napi_value v; napi_create_int32(env, value, &v); return v; }
napi_value real(napi_env env, double value) { napi_value v; napi_create_double(env, value, &v); return v; }

bool getBytes(napi_env env, napi_value value, const uint8_t*& data, size_t& len) {
    bool typed = false;
    if (napi_is_typedarray(env, value, &typed) == napi_ok && typed) {
        napi_typedarray_type type; size_t count = 0; void* raw = nullptr;
        napi_value buffer; size_t offset = 0;
        if (napi_get_typedarray_info(env, value, &type, &count, &raw, &buffer, &offset) != napi_ok) return false;
        data = static_cast<const uint8_t*>(raw);
        len = count;
        return true;
    }
    bool arrayBuffer = false;
    if (napi_is_arraybuffer(env, value, &arrayBuffer) == napi_ok && arrayBuffer) {
        void* raw = nullptr;
        if (napi_get_arraybuffer_info(env, value, &raw, &len) != napi_ok) return false;
        data = static_cast<const uint8_t*>(raw);
        return true;
    }
    return false;
}

std::string getString(napi_env env, napi_value value) {
    size_t len = 0;
    napi_get_value_string_utf8(env, value, nullptr, 0, &len);
    std::string out(len + 1, '\0');
    napi_get_value_string_utf8(env, value, &out[0], len + 1, &len);
    out.resize(len);
    return out;
}

void args(napi_env env, napi_callback_info info, size_t& argc, napi_value* argv) {
    napi_get_cb_info(env, info, &argc, argv, nullptr, nullptr);
}

napi_value JCreateNode(napi_env e, napi_callback_info i) { napi_value a[1]; size_t n=1; args(e,i,n,a); uint32_t t=0; getU32(e,a[0],t);int32_t id=ui_create_node(t);uint32_t count=++g_createCount;if(count<=3)LOGI("createNode type=%{public}u id=%{public}d",t,id);return number(e,id); }
napi_value JDestroyNode(napi_env e, napi_callback_info i) { napi_value a[1]; size_t n=1; args(e,i,n,a); int32_t x=0; getI32(e,a[0],x); ui_destroy_node(x); return undefined(e); }
napi_value JInsertBefore(napi_env e, napi_callback_info i) { napi_value a[3]; size_t n=3; args(e,i,n,a); int32_t x=0,y=0,z=0; getI32(e,a[0],x);getI32(e,a[1],y);getI32(e,a[2],z);ui_insert_before(x,y,z);return undefined(e); }
napi_value JRemoveChild(napi_env e, napi_callback_info i) { napi_value a[2]; size_t n=2; args(e,i,n,a); int32_t x=0,y=0;getI32(e,a[0],x);getI32(e,a[1],y);ui_remove_child(x,y);return undefined(e); }
napi_value JSetStyle(napi_env e, napi_callback_info i) { napi_value a[2];size_t n=2;args(e,i,n,a);int32_t x=0,y=0;getI32(e,a[0],x);getI32(e,a[1],y);ui_set_style(x,y);return undefined(e); }
napi_value JSetProp(napi_env e, napi_callback_info i) { napi_value a[3];size_t n=3;args(e,i,n,a);int32_t x=0;uint32_t p=0;double v=0;getI32(e,a[0],x);getU32(e,a[1],p);getDouble(e,a[2],v);ui_set_prop(x,p,v);return undefined(e); }
napi_value JSetText(napi_env e, napi_callback_info i) { napi_value a[2];size_t n=2;args(e,i,n,a);int32_t x=0;getI32(e,a[0],x);auto s=getString(e,a[1]);ui_set_text(x,reinterpret_cast<const uint8_t*>(s.data()),s.size());return undefined(e); }
napi_value JReplaceText(napi_env e, napi_callback_info i) { napi_value a[2];size_t n=2;args(e,i,n,a);int32_t x=0;getI32(e,a[0],x);auto s=getString(e,a[1]);ui_replace_text(x,reinterpret_cast<const uint8_t*>(s.data()),s.size());return undefined(e); }
napi_value JUploadTexture(napi_env e, napi_callback_info i) { napi_value a[4];size_t n=4;args(e,i,n,a);const uint8_t* p=nullptr;size_t len=0;uint32_t w=0,h=0,f=0;getBytes(e,a[0],p,len);getU32(e,a[1],w);getU32(e,a[2],h);getU32(e,a[3],f);return number(e,ui_upload_texture(p,len,w,h,f)); }
napi_value JUploadImgEntry(napi_env e, napi_callback_info) { return number(e,-1); }
napi_value JFreeTexture(napi_env e, napi_callback_info) { return undefined(e); }
napi_value JSetImage(napi_env e, napi_callback_info i) { napi_value a[2];size_t n=2;args(e,i,n,a);int32_t x=0,y=0;getI32(e,a[0],x);getI32(e,a[1],y);ui_set_image(x,y);return undefined(e); }
napi_value JSetSprite(napi_env e, napi_callback_info i) { napi_value a[5];size_t n=5;args(e,i,n,a);int32_t x=0,y=0;uint32_t f=0,c=0,s=0;getI32(e,a[0],x);getI32(e,a[1],y);getU32(e,a[2],f);getU32(e,a[3],c);getU32(e,a[4],s);ui_set_sprite(x,y,f,c,s);return undefined(e); }
napi_value JAnimate(napi_env e, napi_callback_info i) { napi_value a[6];size_t n=6;args(e,i,n,a);int32_t x=0;uint32_t p=0,d=0,es=0,dl=0;double to=0;getI32(e,a[0],x);getU32(e,a[1],p);getDouble(e,a[2],to);getU32(e,a[3],d);getU32(e,a[4],es);getU32(e,a[5],dl);return number(e,ui_animate(x,p,to,d,es,dl)); }
napi_value JCancelAnim(napi_env e, napi_callback_info i) { napi_value a[1];size_t n=1;args(e,i,n,a);int32_t x=0;getI32(e,a[0],x);ui_cancel_anim(x);return undefined(e); }
napi_value JSetFocus(napi_env e, napi_callback_info i) { napi_value a[1];size_t n=1;args(e,i,n,a);int32_t x=0;getI32(e,a[0],x);ui_set_focus(x);return undefined(e); }
napi_value JSetActive(napi_env e, napi_callback_info) { return undefined(e); }
napi_value JLoadStyles(napi_env e, napi_callback_info i) { napi_value a[1];size_t n=1;args(e,i,n,a);const uint8_t* p=nullptr;size_t len=0;getBytes(e,a[0],p,len);int32_t rc=ui_load_styles(p,len);g_styleLoadCount++;LOGI("loadStyles len=%{public}zu rc=%{public}d",len,rc);return number(e,rc); }
napi_value JLoadFont(napi_env e, napi_callback_info i) { napi_value a[1];size_t n=1;args(e,i,n,a);const uint8_t* p=nullptr;size_t len=0;getBytes(e,a[0],p,len);return number(e,ui_load_font_atlas(p,len)); }
napi_value JMeasureText(napi_env e, napi_callback_info i) { napi_value a[2];size_t n=2;args(e,i,n,a);auto s=getString(e,a[0]);uint32_t slot=0;getU32(e,a[1],slot);return real(e,ui_measure_text(reinterpret_cast<const uint8_t*>(s.data()),s.size(),slot)); }

void logPendingException(napi_env env, const char* where) {
    bool pending = false;
    napi_is_exception_pending(env, &pending);
    if (!pending) return;
    napi_value ex, str; napi_get_and_clear_last_exception(env, &ex); napi_coerce_to_string(env, ex, &str);
    std::string text = getString(env, str);
    LOGE("%{public}s exception: %{public}s", where, text.c_str());
}

napi_value Boot(napi_env env, napi_callback_info) {
    std::lock_guard<std::mutex> lock(g_coreMutex);
    openstrike_init();
    ui_init();
    napi_value global, ui; napi_get_global(env,&global); napi_create_object(env,&ui);
    napi_property_descriptor ops[] = {
        {"createNode",0,JCreateNode,0,0,0,napi_default,0},{"destroyNode",0,JDestroyNode,0,0,0,napi_default,0},
        {"insertBefore",0,JInsertBefore,0,0,0,napi_default,0},{"removeChild",0,JRemoveChild,0,0,0,napi_default,0},
        {"setStyle",0,JSetStyle,0,0,0,napi_default,0},{"setProp",0,JSetProp,0,0,0,napi_default,0},
        {"setText",0,JSetText,0,0,0,napi_default,0},{"replaceText",0,JReplaceText,0,0,0,napi_default,0},
        {"uploadTexture",0,JUploadTexture,0,0,0,napi_default,0},{"uploadImgEntry",0,JUploadImgEntry,0,0,0,napi_default,0},
        {"freeTexture",0,JFreeTexture,0,0,0,napi_default,0},{"setImage",0,JSetImage,0,0,0,napi_default,0},
        {"setSprite",0,JSetSprite,0,0,0,napi_default,0},{"animate",0,JAnimate,0,0,0,napi_default,0},
        {"cancelAnim",0,JCancelAnim,0,0,0,napi_default,0},{"setFocus",0,JSetFocus,0,0,0,napi_default,0},
        {"setActive",0,JSetActive,0,0,0,napi_default,0},{"loadStyles",0,JLoadStyles,0,0,0,napi_default,0},
        {"loadFontAtlas",0,JLoadFont,0,0,0,napi_default,0},{"measureText",0,JMeasureText,0,0,0,napi_default,0},
    };
    napi_define_properties(env,ui,sizeof(ops)/sizeof(ops[0]),ops);
    g_booted.store(true);
    LOGI("native host prepared");
    return ui;
}

napi_value Pulse(napi_env env, napi_callback_info) {
    const uint32_t buttons=g_pendingButton.exchange(0)|g_heldButton.load();
    const uint32_t analog=g_pendingAnalog.exchange(0x8080);
    const float mx=((buttons&BTN_RIGHT)?1.0f:0.0f)-((buttons&BTN_LEFT)?1.0f:0.0f);
    const float my=((buttons&BTN_UP)?1.0f:0.0f)-((buttons&BTN_DOWN)?1.0f:0.0f);
    openstrike_tick(1.0f/60.0f,mx,my,(buttons&BTN_RTRIGGER)?1:0,(buttons&BTN_SQUARE)?1:0,(buttons&BTN_CROSS)?1:0);
    OpenStrikeSnapshot s{};openstrike_snapshot(&s);
    static uint32_t pulseCount=0,lastAmmo=UINT32_MAX;
    if((++pulseCount%120)==0||s.ammo!=lastAmmo){LOGI("core pulse=%{public}u t=%{public}.2f pos=%{public}.1f,%{public}.1f,%{public}.1f yaw=%{public}.3f pitch=%{public}.3f vy=%{public}.1f ground=%{public}u fly=%{public}u down=%{public}.1f hp=%{public}d alive=%{public}u phase=%{public}u bots=%{public}u/%{public}u ammo=%{public}u buttons=0x%{public}x",pulseCount,s.time,s.x,s.y,s.z,s.yaw,s.pitch,s.vel_y,s.on_ground,s.fly_mode,s.ground_dist,s.health,s.alive,s.phase,s.alive_bots,s.total_bots,s.ammo,buttons);lastAmmo=s.ammo;}
    napi_value o;napi_create_object(env,&o);
    auto num=[&](const char* k,double x){napi_value v;napi_create_double(env,x,&v);napi_set_named_property(env,o,k,v);};
    auto boolean=[&](const char* k,bool x){napi_value v;napi_get_boolean(env,x,&v);napi_set_named_property(env,o,k,v);};
    const char* phase=s.phase==1?"live":s.phase==2?"won":s.phase==3?"lost":"starting";
    napi_value pv;napi_create_string_utf8(env,phase,NAPI_AUTO_LENGTH,&pv);napi_set_named_property(env,o,"phase",pv);
    num("time",s.time);num("hp",s.health);boolean("alive",s.alive!=0);num("ammo",s.ammo);num("reserve",s.reserve);
    boolean("reloading",s.reloading!=0);num("reloadFrac",s.reload_frac);num("aliveBots",s.alive_bots);num("totalBots",s.total_bots);
    num("wins",s.wins);num("losses",s.losses);num("speed",s.speed);num("buttons",buttons);num("analog",analog);
    return o;
}

napi_value Press(napi_env env, napi_callback_info info) {
    napi_value values[1]; size_t count=1; args(env,info,count,values);
    int32_t button=0; if(count==1)getI32(env,values[0],button);
    g_pendingAnalog.store(0x8080); g_pendingButton.store(static_cast<uint32_t>(button));
    return undefined(env);
}

napi_value Hold(napi_env env,napi_callback_info info){
    napi_value values[2];size_t count=2;args(env,info,count,values);int32_t button=0;bool on=false;
    if(count>=1)getI32(env,values[0],button);if(count>=2)napi_get_value_bool(env,values[1],&on);
    const uint32_t mask=static_cast<uint32_t>(button);if(on)g_heldButton.fetch_or(mask);else g_heldButton.fetch_and(~mask);return undefined(env);
}

napi_value Look(napi_env env,napi_callback_info info){
    napi_value values[2];size_t count=2;args(env,info,count,values);double dx=0.0,dy=0.0;
    if(count>=1)getDouble(env,values[0],dx);if(count>=2)getDouble(env,values[1],dy);
    openstrike_look(static_cast<float>(dx),static_cast<float>(dy));
    return undefined(env);
}

double propNumber(napi_env env,napi_value o,const char* name,double fallback){napi_value v;if(napi_get_named_property(env,o,name,&v)!=napi_ok)return fallback;double x=0;return napi_get_value_double(env,v,&x)==napi_ok?x:fallback;}
napi_value SetPhase(napi_env e,napi_callback_info i){napi_value a[1];size_t n=1;args(e,i,n,a);auto s=getString(e,a[0]);openstrike_set_phase(s=="live"?1:s=="won"?2:s=="lost"?3:0);return undefined(e);}
napi_value ResetRound(napi_env e,napi_callback_info){openstrike_reset_round();return undefined(e);}
napi_value AddWin(napi_env e,napi_callback_info){openstrike_add_win();return undefined(e);}
napi_value AddLoss(napi_env e,napi_callback_info){openstrike_add_loss();return undefined(e);}
napi_value SetBotCount(napi_env e,napi_callback_info i){napi_value a[1];size_t n=1;args(e,i,n,a);uint32_t x=0;getU32(e,a[0],x);openstrike_set_bot_count(x);return undefined(e);}
napi_value ConfigureWeapon(napi_env e,napi_callback_info i){napi_value a[1];size_t n=1;args(e,i,n,a);openstrike_configure_weapon((uint32_t)propNumber(e,a[0],"magSize",30),(uint32_t)propNumber(e,a[0],"reserve",90),(float)propNumber(e,a[0],"fireInterval",.105),(float)propNumber(e,a[0],"reloadTime",2.4),(int32_t)propNumber(e,a[0],"damageBody",34),(int32_t)propNumber(e,a[0],"damageHead",100));return undefined(e);}
napi_value ConfigureBots(napi_env e,napi_callback_info i){napi_value a[1];size_t n=1;args(e,i,n,a);openstrike_configure_bots((uint32_t)propNumber(e,a[0],"count",3),(float)propNumber(e,a[0],"speed",190),(float)propNumber(e,a[0],"attackInterval",1.4),(int32_t)propNumber(e,a[0],"damageMin",8),(int32_t)propNumber(e,a[0],"damageMax",14));return undefined(e);}
napi_value LoadMap(napi_env e,napi_callback_info){return undefined(e);}
napi_value ToMenu(napi_env e,napi_callback_info){return undefined(e);}

GLuint compileShader(GLenum type,const char* source) {
    GLuint shader=glCreateShader(type); glShaderSource(shader,1,&source,nullptr); glCompileShader(shader);
    GLint ok=0; glGetShaderiv(shader,GL_COMPILE_STATUS,&ok); if(!ok){char log[512];glGetShaderInfoLog(shader,sizeof(log),nullptr,log);LOGE("shader: %{public}s",log);}
    return shader;
}

struct Mat4 { float m[16]; };
Mat4 ident(){Mat4 r{};r.m[0]=r.m[5]=r.m[10]=r.m[15]=1;return r;}
Mat4 mmul(const Mat4&a,const Mat4&b){Mat4 r{};for(int c=0;c<4;c++)for(int row=0;row<4;row++)for(int k=0;k<4;k++)r.m[c*4+row]+=a.m[k*4+row]*b.m[c*4+k];return r;}
Mat4 trans(float x,float y,float z){Mat4 r=ident();r.m[12]=x;r.m[13]=y;r.m[14]=z;return r;}
Mat4 rotX(float a){Mat4 r=ident();float c=std::cos(a),s=std::sin(a);r.m[5]=c;r.m[6]=s;r.m[9]=-s;r.m[10]=c;return r;}
Mat4 rotY(float a){Mat4 r=ident();float c=std::cos(a),s=std::sin(a);r.m[0]=c;r.m[2]=-s;r.m[8]=s;r.m[10]=c;return r;}
Mat4 persp(float fov,float aspect,float n,float f){Mat4 r{};float q=1/std::tan(fov*.5f);r.m[0]=q/aspect;r.m[5]=q;r.m[10]=(f+n)/(n-f);r.m[11]=-1;r.m[14]=2*f*n/(n-f);return r;}

bool setupWorld(RenderContext& c){
    const char* vs="attribute vec3 aPos;attribute vec2 aUv;attribute vec4 aColor;uniform mat4 uMvp;varying vec2 vUv;varying vec4 vColor;void main(){vUv=aUv;vColor=aColor;gl_Position=uMvp*vec4(aPos,1.0);}";
    const char* fs="precision mediump float;varying vec2 vUv;varying vec4 vColor;uniform sampler2D uTex;uniform float uMasked;void main(){vec4 c=texture2D(uTex,vUv)*vColor;if(uMasked>0.5&&c.a<0.25)discard;gl_FragColor=c;}";
    GLuint v=compileShader(GL_VERTEX_SHADER,vs),f=compileShader(GL_FRAGMENT_SHADER,fs);c.worldProgram=glCreateProgram();glAttachShader(c.worldProgram,v);glAttachShader(c.worldProgram,f);glLinkProgram(c.worldProgram);glDeleteShader(v);glDeleteShader(f);
    c.worldPos=glGetAttribLocation(c.worldProgram,"aPos");c.worldUv=glGetAttribLocation(c.worldProgram,"aUv");c.worldColor=glGetAttribLocation(c.worldProgram,"aColor");c.worldMvp=glGetUniformLocation(c.worldProgram,"uMvp");c.worldMasked=glGetUniformLocation(c.worldProgram,"uMasked");
    uint32_t vc=0,ic=0;const uint8_t* verts=openstrike_p3d_vertices(&vc);const uint16_t* idx=openstrike_p3d_indices(&ic);
    glGenBuffers(1,&c.worldVbo);glBindBuffer(GL_ARRAY_BUFFER,c.worldVbo);glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)vc*20,verts,GL_STATIC_DRAW);
    glGenBuffers(1,&c.worldIbo);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,c.worldIbo);glBufferData(GL_ELEMENT_ARRAY_BUFFER,(GLsizeiptr)ic*2,idx,GL_STATIC_DRAW);
    uint32_t tc=openstrike_p3d_texture_count();c.worldTextures.resize(tc);glGenTextures((GLsizei)tc,c.worldTextures.data());
    for(uint32_t i=0;i<tc;i++){P3dTexture t{};if(!openstrike_p3d_texture(i,&t))continue;glBindTexture(GL_TEXTURE_2D,c.worldTextures[i]);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,(GLsizei)t.width,(GLsizei)t.height,0,GL_RGBA,GL_UNSIGNED_BYTE,t.rgba);}
    c.worldBatchCount=openstrike_p3d_batch_count();
    const char* bvs="attribute vec3 aPos;uniform mat4 uMvp;void main(){gl_Position=uMvp*vec4(aPos,1.0);}";
    const char* bfs="precision mediump float;uniform vec4 uColor;void main(){gl_FragColor=uColor;}";
    GLuint bv=compileShader(GL_VERTEX_SHADER,bvs),bf=compileShader(GL_FRAGMENT_SHADER,bfs);c.botProgram=glCreateProgram();glAttachShader(c.botProgram,bv);glAttachShader(c.botProgram,bf);glLinkProgram(c.botProgram);glDeleteShader(bv);glDeleteShader(bf);
    c.botPos=glGetAttribLocation(c.botProgram,"aPos");c.botMvp=glGetUniformLocation(c.botProgram,"uMvp");c.botColor=glGetUniformLocation(c.botProgram,"uColor");
    uint32_t bvc=0;const float* bverts=openstrike_soldier_vertices(&bvc);const uint16_t* bidx=openstrike_soldier_indices(&c.botIndexCount,&c.botBodyIndexCount);
    glGenBuffers(1,&c.botVbo);glBindBuffer(GL_ARRAY_BUFFER,c.botVbo);glBufferData(GL_ARRAY_BUFFER,(GLsizeiptr)bvc*12,bverts,GL_STATIC_DRAW);
    glGenBuffers(1,&c.botIbo);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,c.botIbo);glBufferData(GL_ELEMENT_ARRAY_BUFFER,(GLsizeiptr)c.botIndexCount*2,bidx,GL_STATIC_DRAW);
    LOGI("p3d gpu verts=%{public}u indices=%{public}u batches=%{public}u textures=%{public}u soldier=%{public}u/%{public}u",vc,ic,c.worldBatchCount,tc,bvc,c.botIndexCount);return glGetError()==GL_NO_ERROR;
}

bool setupEgl(RenderContext& c) {
    c.display=eglGetDisplay(EGL_DEFAULT_DISPLAY); if(c.display==EGL_NO_DISPLAY||!eglInitialize(c.display,nullptr,nullptr)) return false;
    const EGLint attrs[]={EGL_SURFACE_TYPE,EGL_WINDOW_BIT,EGL_RED_SIZE,8,EGL_GREEN_SIZE,8,EGL_BLUE_SIZE,8,EGL_ALPHA_SIZE,8,EGL_DEPTH_SIZE,24,EGL_RENDERABLE_TYPE,EGL_OPENGL_ES2_BIT,EGL_NONE};
    EGLConfig cfg; EGLint count=0; if(!eglChooseConfig(c.display,attrs,&cfg,1,&count)||count<1)return false;
    EGLint depthBits=0;eglGetConfigAttrib(c.display,cfg,EGL_DEPTH_SIZE,&depthBits);LOGI("EGL depth bits=%{public}d",depthBits);
    c.surface=eglCreateWindowSurface(c.display,cfg,reinterpret_cast<EGLNativeWindowType>(c.window),nullptr);
    const EGLint ctxAttrs[]={EGL_CONTEXT_CLIENT_VERSION,2,EGL_NONE}; c.context=eglCreateContext(c.display,cfg,EGL_NO_CONTEXT,ctxAttrs);
    if(c.surface==EGL_NO_SURFACE||c.context==EGL_NO_CONTEXT||!eglMakeCurrent(c.display,c.surface,c.surface,c.context))return false;
    eglSwapInterval(c.display,1);
    const char* vs="attribute vec2 aPos;attribute vec2 aUv;varying vec2 vUv;void main(){vUv=aUv;gl_Position=vec4(aPos,0.0,1.0);}";
    const char* fs="precision mediump float;varying vec2 vUv;uniform sampler2D uTex;void main(){gl_FragColor=texture2D(uTex,vUv);}";
    GLuint v=compileShader(GL_VERTEX_SHADER,vs),f=compileShader(GL_FRAGMENT_SHADER,fs); c.program=glCreateProgram();glAttachShader(c.program,v);glAttachShader(c.program,f);glLinkProgram(c.program);glDeleteShader(v);glDeleteShader(f);
    c.position=glGetAttribLocation(c.program,"aPos");c.texCoord=glGetAttribLocation(c.program,"aUv");
    glGenTextures(1,&c.texture);glBindTexture(GL_TEXTURE_2D,c.texture);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_CLAMP_TO_EDGE);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_CLAMP_TO_EDGE);glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,FB_W,FB_H,0,GL_RGBA,GL_UNSIGNED_BYTE,nullptr);
    return setupWorld(c);
}

void drawWorld(RenderContext& c,const OpenStrikeSnapshot& s){
    glEnable(GL_DEPTH_TEST);glDepthFunc(GL_LEQUAL);glDepthMask(GL_TRUE);glClearDepthf(1.0f);glDisable(GL_BLEND);glDisable(GL_CULL_FACE);
    glClearColor(.16f,.20f,.24f,1);glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    const float aspect=c.height?float(c.width)/float(c.height):1.76f;
    Mat4 vp=mmul(persp(74.0f*3.14159265f/180.0f,aspect,4.0f,8192.0f),mmul(rotX(-s.pitch),mmul(rotY(-s.yaw),trans(-s.x,-(s.y+28.0f),-s.z))));
    glUseProgram(c.worldProgram);glUniformMatrix4fv(c.worldMvp,1,GL_FALSE,vp.m);glActiveTexture(GL_TEXTURE0);
    glBindBuffer(GL_ARRAY_BUFFER,c.worldVbo);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,c.worldIbo);
    glEnableVertexAttribArray(c.worldPos);glEnableVertexAttribArray(c.worldUv);glEnableVertexAttribArray(c.worldColor);
    for(uint32_t i=0;i<c.worldBatchCount;i++){P3dBatch b{};if(!openstrike_p3d_batch(i,&b)||b.texture>=c.worldTextures.size())continue;const uintptr_t base=(uintptr_t)b.vert_base*20;glVertexAttribPointer(c.worldUv,2,GL_FLOAT,GL_FALSE,20,(const void*)(base+0));glVertexAttribPointer(c.worldColor,4,GL_UNSIGNED_BYTE,GL_TRUE,20,(const void*)(base+8));glVertexAttribPointer(c.worldPos,3,GL_SHORT,GL_FALSE,20,(const void*)(base+12));glUniform1f(c.worldMasked,b.kind==1?1.0f:0.0f);glBindTexture(GL_TEXTURE_2D,c.worldTextures[b.texture]);glDrawElements(GL_TRIANGLES,(GLsizei)b.index_count,GL_UNSIGNED_SHORT,(const void*)((uintptr_t)b.index_base*2));}
    glUseProgram(c.botProgram);glBindBuffer(GL_ARRAY_BUFFER,c.botVbo);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,c.botIbo);glEnableVertexAttribArray(c.botPos);glVertexAttribPointer(c.botPos,3,GL_FLOAT,GL_FALSE,12,(const void*)0);
    const uint32_t botCount=openstrike_bot_count();
    for(uint32_t i=0;i<botCount;i++){BotSnapshot b{};if(!openstrike_bot_snapshot(i,&b))continue;const float fall=std::min(b.death_time*3.0f,1.0f);const float ease=1.0f-(1.0f-fall)*(1.0f-fall);Mat4 model=mmul(trans(b.x,b.y-36.0f+(2.0f-2.0f*ease),b.z),mmul(rotY(b.yaw),rotX(-ease*1.47655f)));Mat4 mvp=mmul(vp,model);glUniformMatrix4fv(c.botMvp,1,GL_FALSE,mvp.m);const float dead=b.alive?1.0f:0.55f;glUniform4f(c.botColor,.30f*dead,.42f*dead,.25f*dead,1);glDrawElements(GL_TRIANGLES,(GLsizei)c.botBodyIndexCount,GL_UNSIGNED_SHORT,(const void*)0);glUniform4f(c.botColor,.18f*dead,.75f*dead,.86f*dead,1);glDrawElements(GL_TRIANGLES,(GLsizei)(c.botIndexCount-c.botBodyIndexCount),GL_UNSIGNED_SHORT,(const void*)((uintptr_t)c.botBodyIndexCount*2));}
}

void* renderLoop(void*) {
    if(!setupEgl(g_render)){LOGE("EGL setup failed 0x%{public}x",eglGetError());g_render.running=false;return nullptr;}
    const GLfloat pos[]={-1,-1,1,-1,-1,1,1,1}; const GLfloat uv[]={0,1,1,1,0,0,1,0};
    bool diagnosed=false;const uint8_t* pixels=nullptr;uint32_t frames=0;timespec fpsStart{};clock_gettime(CLOCK_MONOTONIC,&fpsStart);
    while(g_render.running.load()) {
        if(g_booted.load()) {
            const bool updateHud=pixels==nullptr||(frames&1u)==0;if(updateHud){ui_tick();pixels=ui_render();}OpenStrikeSnapshot state{};openstrike_snapshot(&state);
            glViewport(0,0,(GLsizei)g_render.width,(GLsizei)g_render.height);drawWorld(g_render,state);glDisable(GL_DEPTH_TEST);glEnable(GL_BLEND);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glUseProgram(g_render.program);glActiveTexture(GL_TEXTURE0);glBindTexture(GL_TEXTURE_2D,g_render.texture);if(updateHud)glTexSubImage2D(GL_TEXTURE_2D,0,0,0,FB_W,FB_H,GL_RGBA,GL_UNSIGNED_BYTE,pixels);glBindBuffer(GL_ARRAY_BUFFER,0);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);glEnableVertexAttribArray(g_render.position);glEnableVertexAttribArray(g_render.texCoord);glVertexAttribPointer(g_render.position,2,GL_FLOAT,GL_FALSE,0,pos);glVertexAttribPointer(g_render.texCoord,2,GL_FLOAT,GL_FALSE,0,uv);glDrawArrays(GL_TRIANGLE_STRIP,0,4);glDisable(GL_BLEND);
            if(!diagnosed){uint32_t hash=2166136261u;uint64_t sum=0;for(size_t i=0;i<(size_t)FB_W*FB_H*4;i++){hash=(hash^pixels[i])*16777619u;sum+=pixels[i];}GLenum error=glGetError();LOGI("frame hash=%{public}08x sum=%{public}llu p0=%{public}u,%{public}u,%{public}u,%{public}u gl=0x%{public}x",hash,(unsigned long long)sum,pixels[0],pixels[1],pixels[2],pixels[3],error);diagnosed=true;}
            eglSwapBuffers(g_render.display,g_render.surface);frames++;timespec now{};clock_gettime(CLOCK_MONOTONIC,&now);const double elapsed=(now.tv_sec-fpsStart.tv_sec)+(now.tv_nsec-fpsStart.tv_nsec)/1e9;if(elapsed>=2.0){LOGI("render fps=%{public}.1f frames=%{public}u",frames/elapsed,frames);frames=0;fpsStart=now;}
        } else usleep(1000);
    }
    eglMakeCurrent(g_render.display,EGL_NO_SURFACE,EGL_NO_SURFACE,EGL_NO_CONTEXT);return nullptr;
}

void OnSurfaceCreated(OH_NativeXComponent* component,void* window) {
    g_render.window=static_cast<OHNativeWindow*>(window);OH_NativeXComponent_GetXComponentSize(component,window,&g_render.width,&g_render.height);g_render.running=true;pthread_create(&g_render.thread,nullptr,renderLoop,nullptr);LOGI("surface %{public}llux%{public}llu",(unsigned long long)g_render.width,(unsigned long long)g_render.height);
}
void OnSurfaceChanged(OH_NativeXComponent* component,void* window){OH_NativeXComponent_GetXComponentSize(component,window,&g_render.width,&g_render.height);}
void OnSurfaceDestroyed(OH_NativeXComponent*,void*){g_render.running=false;if(g_render.thread)pthread_join(g_render.thread,nullptr);if(g_render.display!=EGL_NO_DISPLAY){if(g_render.surface!=EGL_NO_SURFACE)eglDestroySurface(g_render.display,g_render.surface);if(g_render.context!=EGL_NO_CONTEXT)eglDestroyContext(g_render.display,g_render.context);eglTerminate(g_render.display);}g_render.display=EGL_NO_DISPLAY;g_render.surface=EGL_NO_SURFACE;g_render.context=EGL_NO_CONTEXT;g_render.thread={};}
void OnTouch(OH_NativeXComponent* component,void* window) {
    OH_NativeXComponent_TouchEvent e;
    if(OH_NativeXComponent_GetTouchEvent(component,window,&e)!=0)return;
    if(e.type==OH_NATIVEXCOMPONENT_DOWN){
        const bool controlZone=e.y>(float)g_render.height*.55f&&(e.x<(float)g_render.width*.42f||e.x>(float)g_render.width*.78f);
        if(controlZone||g_render.lookPointerId!=-1)return;
        g_render.lookPointerId=e.id;g_render.downX=g_render.lastX=e.x;g_render.downY=g_render.lastY=e.y;return;
    }
    if(e.type==OH_NATIVEXCOMPONENT_MOVE){
        if(e.id!=g_render.lookPointerId)return;
        const float dx=e.x-g_render.lastX,dy=e.y-g_render.lastY;
        g_render.lastX=e.x;g_render.lastY=e.y;
        if(std::fabs(dx)>120.0f||std::fabs(dy)>120.0f){LOGI("drop touch discontinuity dx=%{public}.1f dy=%{public}.1f",dx,dy);return;}
        openstrike_look(dx,dy);return;
    }
    if(e.type!=OH_NATIVEXCOMPONENT_UP&&e.type!=OH_NATIVEXCOMPONENT_CANCEL)return;
    if(e.id!=g_render.lookPointerId)return;
    g_render.lookPointerId=-1;
    if(e.type==OH_NATIVEXCOMPONENT_CANCEL)return;
    const float dx=e.x-g_render.downX,dy=e.y-g_render.downY;
    if(std::fabs(dx)>40.0f||std::fabs(dy)>40.0f)return;
    g_pendingButton.fetch_or(BTN_RTRIGGER);
}
OH_NativeXComponent_Callback g_callbacks{.OnSurfaceCreated=OnSurfaceCreated,.OnSurfaceChanged=OnSurfaceChanged,.OnSurfaceDestroyed=OnSurfaceDestroyed,.DispatchTouchEvent=OnTouch};

napi_value Init(napi_env env,napi_value exports) {
    g_env=env;napi_property_descriptor desc[]={{"boot",0,Boot,0,0,0,napi_default,0},{"pulse",0,Pulse,0,0,0,napi_default,0},{"press",0,Press,0,0,0,napi_default,0},{"hold",0,Hold,0,0,0,napi_default,0},{"look",0,Look,0,0,0,napi_default,0},{"setPhase",0,SetPhase,0,0,0,napi_default,0},{"resetRound",0,ResetRound,0,0,0,napi_default,0},{"addWin",0,AddWin,0,0,0,napi_default,0},{"addLoss",0,AddLoss,0,0,0,napi_default,0},{"setBotCount",0,SetBotCount,0,0,0,napi_default,0},{"configureWeapon",0,ConfigureWeapon,0,0,0,napi_default,0},{"configureBots",0,ConfigureBots,0,0,0,napi_default,0},{"loadMap",0,LoadMap,0,0,0,napi_default,0},{"toMenu",0,ToMenu,0,0,0,napi_default,0}};napi_define_properties(env,exports,sizeof(desc)/sizeof(desc[0]),desc);
    napi_value instance=nullptr;if(napi_get_named_property(env,exports,OH_NATIVE_XCOMPONENT_OBJ,&instance)==napi_ok){OH_NativeXComponent* component=nullptr;if(napi_unwrap(env,instance,reinterpret_cast<void**>(&component))==napi_ok&&component){OH_NativeXComponent_RegisterCallback(component,&g_callbacks);LOGI("XComponent callbacks registered");}}
    return exports;
}
}

extern "C" {
static napi_module module={.nm_version=1,.nm_flags=0,.nm_filename=nullptr,.nm_register_func=Init,.nm_modname="entry",.nm_priv=nullptr,.reserved={0}};
__attribute__((constructor)) void RegisterEntryModule(){napi_module_register(&module);}
}
