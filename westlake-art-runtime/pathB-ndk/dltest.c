#include <dlfcn.h>
#include <stdio.h>
int main(int argc, char** argv) {
  if (argc < 2) { printf("usage: dltest <so>\n"); return 2; }
  void* h = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
  if (!h) { printf("DLOPEN_FAIL: %s\n", dlerror()); return 1; }
  printf("DLOPEN_OK handle=%p\n", h);
  return 0;
}
