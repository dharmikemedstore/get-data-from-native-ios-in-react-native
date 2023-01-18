
#import "HealthMesurment-Swift.h"
#import "ChangeViewBridge.h"
#import "AppDelegate.h"

@implementation ChangeViewBridge

// reference "ChangeViewBridge" module in index.ios.js
RCT_EXPORT_MODULE(ChangeViewBridge);

RCT_EXPORT_METHOD(changeToNativeView: doctor_name : user_name : identity : room : token : time_slot_duration) {
  
  dispatch_async(dispatch_get_main_queue(), ^{
    
//    DashboardViewController *vc = [DashboardViewController new];
//    [vc callFunction];
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate goToRegisterView:doctor_name :user_name :identity :room :token :time_slot_duration];
  });

}

@end
