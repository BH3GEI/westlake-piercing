#pragma once
// [DAYU600] minimal NDK asset_manager.h — opaque types for androidfw/configuration.h.
#include <sys/cdefs.h>
struct AAssetManager; typedef struct AAssetManager AAssetManager;
struct AAssetDir;     typedef struct AAssetDir AAssetDir;
struct AAsset;        typedef struct AAsset AAsset;
enum { AASSET_MODE_UNKNOWN=0, AASSET_MODE_RANDOM=1, AASSET_MODE_STREAMING=2, AASSET_MODE_BUFFER=3 };
