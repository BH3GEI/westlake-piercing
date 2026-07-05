#pragma once
// [DAYU600] glibc extensions OHOS musl lacks, used by libbase logging.cpp.
#ifdef __cplusplus
extern "C" {
#endif
extern char* program_invocation_name;
extern char* program_invocation_short_name;
#ifdef __cplusplus
}
#endif
