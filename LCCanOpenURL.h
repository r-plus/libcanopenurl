@interface LCCanOpenURL : NSObject
+ (LCCanOpenURL * _Nonnull)sharedInstance;
- (BOOL)canOpenURL:(NSURL * _Nonnull)URL;
- (BOOL)canOpenURLString:(NSString * _Nonnull)URLString;
@end
