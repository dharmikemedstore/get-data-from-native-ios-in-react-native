#import <React/RCTBridgeDelegate.h>
#import <UIKit/UIKit.h>

@class DashboardViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, RCTBridgeDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) UIViewController *mainRootView;
@property (strong, nonatomic) UIViewController *dashboardVCROOT;


- (void) goToRegisterView:(NSString *)doctor_name :(NSString *)user_name :(NSString *)identity :(NSString *)room :(NSString *)token :(NSString *)time_slot_duration; // called from the RCTBridge module
- (void) goToRegisterViewNew:(NSString *)doctor_name :(NSString *)user_name :(NSString *)identity :(NSString *)room :(NSString *)token :(NSString *)time_slot_duration; // called from the RCTBridge module
- (void)goToReactNative;

@end
