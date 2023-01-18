#import <React/RCTBridgeDelegate.h>
#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, RCTBridgeDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navigate;


- (void) goToRegisterView:(NSString *)doctor_name :(NSString *)user_name :(NSString *)identity :(NSString *)room :(NSString *)token :(NSString *)time_slot_duration; // called from the RCTBridge module


@end
