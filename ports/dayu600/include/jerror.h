#pragma once

/* Stub of libjpeg jerror.h for the OpenHarmony bringup build. */

#define JERR_FILE_WRITE 1

#ifndef ERREXIT
#define ERREXIT(cinfo, code) ((void)(cinfo), (void)(code))
#endif
