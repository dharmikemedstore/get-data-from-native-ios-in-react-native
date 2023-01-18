#import <React/RCTBridgeModule.h>

@class DashboardViewController;

@interface ChangeViewBridge : NSObject <RCTBridgeModule>

@property (nonatomic, strong) UIWindow *window;
- (void) changeToNativeView:(NSString *)doctor_name :(NSString *)user_name :(NSString *)identity :(NSString *)room :(NSString *)token :(NSString *)time_slot_duration;

@end
