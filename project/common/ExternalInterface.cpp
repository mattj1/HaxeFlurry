#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include <stdio.h>

#include "flurry_common.h"

using namespace flurry;

// ==================================================================

static value flurry_start_session(value apiKey) 
{
	#ifdef IPHONE
	Flurry_startSession(val_string(apiKey));
	#endif

	return alloc_null();
}
DEFINE_PRIM (flurry_start_session, 1);

static value flurry_log_event(value eventName) 
{
	#ifdef IPHONE
	Flurry_logEvent(val_string(eventName));
	#endif

	return alloc_null();
}
DEFINE_PRIM (flurry_log_event, 1);


// ==================================================================

extern "C" void flurry_main() 
{
	val_int(0); // Fix Neko init
}
DEFINE_ENTRY_POINT(flurry_main);

extern "C" int HaxeFlurry_register_prims() { return 0; }
