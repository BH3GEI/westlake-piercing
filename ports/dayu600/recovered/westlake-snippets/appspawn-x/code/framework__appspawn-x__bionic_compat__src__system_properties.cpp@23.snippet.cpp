// The actual exported symbols in libbegetutil.z.so are versioned (@@1.0):
//   SystemReadParam@@1.0, SystemSetParameter@@1.0, SystemWriteParam@@1.0
// OH header defines: #define SystemGetParameter SystemReadParam
// We declare with __asm__ to link against the versioned symbols directly.
extern "C" {
    int SystemReadParam(const char* key, char* value, uint32_t* len)
        __asm__("SystemReadParam");
    int SystemSetParameter(const char* key, const char* value)
        __asm__("SystemSetParameter");
}
#define SystemGetParameter SystemReadParam
 
// Simple prop_info cache (fixed-size, no STL)
#define MAX_CACHED_PROPS 256
 
struct prop_info {
    char name[PROP_NAME_MAX];
    char value[PROP_VALUE_MAX];
    uint32_t serial;
};
 
static prop_info g_prop_cache[MAX_CACHED_PROPS];
static int g_prop_count = 0;
static uint32_t g_serial = 0;
static pthread_mutex_t g_mutex = PTHREAD_MUTEX_INITIALIZER;
