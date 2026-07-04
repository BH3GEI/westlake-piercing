#pragma once

#ifndef ATRACE_TAG_VIEW
#define ATRACE_TAG_VIEW 0
#endif

#ifndef ATRACE_CALL
#define ATRACE_CALL()
#endif

#ifndef ATRACE_NAME
#define ATRACE_NAME(name) ((void)0)
#endif

#ifndef ATRACE_FORMAT
#define ATRACE_FORMAT(...) ((void)0)
#endif

#ifndef ATRACE_FORMAT_INSTANT
#define ATRACE_FORMAT_INSTANT(...) ((void)0)
#endif

#ifndef ATRACE_ENABLED
#define ATRACE_ENABLED() (false)
#endif

#ifndef ATRACE_TAG
#define ATRACE_TAG(...)
#endif

#ifndef ATRACE_INT
#define ATRACE_INT(name, value) ((void)0)
#endif

#ifndef ATRACE_BEGIN
#define ATRACE_BEGIN(name) ((void)0)
#endif

#ifndef ATRACE_END
#define ATRACE_END() ((void)0)
#endif
