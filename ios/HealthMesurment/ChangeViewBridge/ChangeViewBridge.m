
#import "HealthMesurment-Swift.h"
#import "ChangeViewBridge.h"
#import <React/RCTLog.h>
#import "AppDelegate.h"

@implementation ChangeViewBridge

// reference "ChangeViewBridge" module in index.ios.js
RCT_EXPORT_MODULE(ChangeViewBridge);

RCT_EXPORT_METHOD(changeToNativeView: doctor_name : user_name : identity : room : token : time_slot_duration) {
  dispatch_async(dispatch_get_main_queue(), ^{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
      [appDelegate goToRegisterView:doctor_name :user_name :identity :room :token :time_slot_duration];
  });

}

RCT_EXPORT_METHOD(doSomething:(NSString *)param callback:(RCTResponseSenderBlock)callback) {
  // Do something with the param...
  // Call the callback with a success message and a result object
  callback(@[[NSNull null], @{@"message": @"Success!", @"result": @"some result"}]);
}
@end
