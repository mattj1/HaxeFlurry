#import "FlurryHelper.h"

@implementation FlurryHelper
@end

extern "C"
{
	void Flurry_startSession(const char *apiKey)
	{
		[Flurry startSession:[[NSString alloc] initWithUTF8String:apiKey]];
	}

	void Flurry_logEvent(const char *eventName)
	{
		[Flurry logEvent:[[NSString alloc] initWithUTF8String:eventName]];
	}
}