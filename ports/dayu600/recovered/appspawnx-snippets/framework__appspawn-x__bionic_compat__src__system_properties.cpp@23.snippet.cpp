// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__bionic_compat__src__system_properties.cpp@23.html
// title: p1612 framework/appspawn-x/bionic_compat/src/system_properties.cpp:23

   11: // The actual exported symbols in libbegetutil.z.so are versioned (@@1.0):
   12: //   SystemReadParam@@1.0, SystemSetParameter@@1.0, SystemWriteParam@@1.0
   13: // OH header defines: #define SystemGetParameter SystemReadParam
   14: // We declare with __asm__ to link against the versioned symbols directly.
   15: extern "C" {
   16:     int SystemReadParam(const char* key, char* value, uint32_t* len)
   17:         __asm__("SystemReadParam");
   18:     int SystemSetParameter(const char* key, const char* value)
   19:         __asm__("SystemSetParameter");
   20: }
   21: #define SystemGetParameter SystemReadParam
   22:  
   23: // Simple prop_info cache (fixed-size, no STL)
   24: #define MAX_CACHED_PROPS 256
   25:  
   26: struct prop_info {
   27:     char name[PROP_NAME_MAX];
   28:     char value[PROP_VALUE_MAX];
   29:     uint32_t serial;
   30: };
   31:  
   32: static prop_info g_prop_cache[MAX_CACHED_PROPS];
   33: static int g_prop_count = 0;
   34: static uint32_t g_serial = 0;
   35: static pthread_mutex_t g_mutex = PTHREAD_MUTEX_INITIALIZER;
