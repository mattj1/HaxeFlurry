#ifndef FLURRY_COMMON_H
#define FLURRY_COMMON_H

namespace flurry 
{   
    extern "C"
    {   
        void Flurry_startSession(const char *apiKey);
        void Flurry_logEvent(const char *eventName);
    }
}

#endif