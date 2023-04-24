//
//  MessageModule.m
//  HealthMesurment
//
//  Created by Ahesanali Khanusiya on 24/04/23.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(Message, RCTEventEmitter)

//RCT_EXTERN_METHOD(printHelloWorld)
//RCT_EXTERN_METHOD(getUnreadCount: (RCTResponseSenderBlock)callback)

RCT_EXTERN_METHOD(
                  getUnreadCount: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )
RCT_EXTERN_METHOD(startListening)
RCT_EXTERN_METHOD(stopListening)
RCT_EXTERN_METHOD(passDataFromNativeToRN)


@end
