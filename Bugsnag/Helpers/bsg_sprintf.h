//
//  bsg_sprintf.h
//  Bugsnag
//
//  Copyright © 2022 Bugsnag Inc. All rights reserved.
//

#ifndef bsg_sprintf_h
#define bsg_sprintf_h

#pragma GCC visibility push(hidden)
#define STB_SPRINTF_DECORATE(name) bsg_##name
#include "stb_sprintf.h"
#pragma GCC visibility pop

#endif /* bsg_sprintf_h */
