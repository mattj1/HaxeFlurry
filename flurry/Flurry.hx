package flurry;

#if cpp
import cpp.Lib;
#end

import flash.events.Event;
import flash.events.EventDispatcher;

class Flurry extends EventDispatcher
{
	/*
		// These must/should be called before startSession

		+ (void)setAppVersion:(NSString *)version;

		+ (NSString *)getFlurryAgentVersion;

		+ (void)setShowErrorInLogEnabled:(BOOL)value;

		+ (void)setDebugLogEnabled:(BOOL)value;

		+ (void)setLogLevel:(FlurryLogLevel)value;

		+ (void)setSessionContinueSeconds:(int)seconds;

		+ (void)setSecureTransportEnabled:(BOOL)value;

		+ (void)setCrashReportingEnabled:(BOOL)value;
*/

	// + (void)startSession:(NSString *)apiKey;
	
	public static function startSession( apiKey : String )
	{
		#if ios
			flurry_start_session(apiKey);
		#end
	}



		// + (void) startSession:(NSString *)apiKey withOptions:(id)options;

	public static function pauseBackgroundSession()
	{
		throw "TODO: Not implemented";
	}

	// etc ...

/*
		+ (void)addOrigin:(NSString *)originName withVersion:(NSString*)originVersion;

		+ (void)addOrigin:(NSString *)originName withVersion:(NSString*)originVersion withParameters:(NSDictionary *)parameters;
*/
	//		+ (void)logEvent:(NSString *)eventName;
	public static function logEvent( eventName : String )
	{
		#if ios
			flurry_log_event(eventName);
		#end
	}
/*
		+ (void)logEvent:(NSString *)eventName withParameters:(NSDictionary *)parameters;

		+ (void)logError:(NSString *)errorID message:(NSString *)message exception:(NSException *)exception;

		+ (void)logError:(NSString *)errorID message:(NSString *)message error:(NSError *)error;

		+ (void)logEvent:(NSString *)eventName timed:(BOOL)timed;

		+ (void)logEvent:(NSString *)eventName withParameters:(NSDictionary *)parameters timed:(BOOL)timed;

		+ (void)endTimedEvent:(NSString *)eventName withParameters:(NSDictionary *)parameters;	// non-nil parameters will update the parameters
	
		+ (void)logAllPageViewsForTarget:(id)target;

		+ (void)stopLogPageViewsForTarget:(id)target;

		+ (void)logPageView;

		+ (void)setUserID:(NSString *)userID;	

		+ (void)setAge:(int)age;

		+ (void)setGender:(NSString *)gender;	// user's gender m or f

		+ (void)setLatitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(float)horizontalAccuracy verticalAccuracy:(float)verticalAccuracy;

		+ (void)setSessionReportsOnCloseEnabled:(BOOL)sendSessionReportsOnClose;

		+ (void)setSessionReportsOnPauseEnabled:(BOOL)setSessionReportsOnPauseEnabled;

		+ (void)setBackgroundSessionEnabled:(BOOL)setBackgroundSessionEnabled;

		+ (void)setEventLoggingEnabled:(BOOL)value;
	*/

	#if ios
	
	private static var flurry_start_session = Lib.load ("flurry", "flurry_start_session", 1);
	private static var flurry_log_event = Lib.load ("flurry", "flurry_log_event", 1);

	#end
}
