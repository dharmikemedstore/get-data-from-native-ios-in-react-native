//
//  Message.swift
//  HealthMesurment
//
//  Created by Ahesanali Khanusiya on 24/04/23.
//

import Foundation
import RxSwift

//@objc(Message)
//class Message: NSObject {
//  @objc
//  func constantsToExport() -> [AnyHashable : Any]! {
//    return [
//          "number": 123.9,
//          "string": "foo",
//          "boolean": true,
//          "array": [1, 22.2, "33"],
//          "object": ["a": 1, "b": 2]
//        ]
//  }
//
//  @objc
//  func printHelloWorld() {
//    print("Hello World")
//  }
//
//  @objc static func requiresMainQueueSetup() -> Bool {
//          return true
//      }
//
//  @objc
//  func getUnreadCount(_ callback: RCTResponseSenderBlock) {
//    callback([10])
//  }
//
//  @objc func getUnreadCountWithError(
//    _ resolve: @escaping RCTPromiseResolveBlock,
//    rejecter reject: @escaping RCTPromiseRejectBlock )
//  -> Void {
//    if(Int.random(in: 0..<6) < 3){
//      DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
//        resolve([10])
//      }
//    } else {
//      let error = NSError(domain: "", code: 200, userInfo: nil)
//      reject("E_COUNT", "count not fetch from server", error)
//    }
//  }
//
//}

@objc(Message)
class Message: RCTEventEmitter,Messageprotocol {
  let E_UNREAD_ERROR: String = "E_UNREAD_ERROR";
  let C_UNREAD_EVENT: String = "EventUnread";
  let C_COUNT: String = "Count";
  var disposableEmitter: Disposable? = nil;
  
  
  @objc
  func getUnreadCount(
    _ resolve: @escaping RCTPromiseResolveBlock,
    rejecter reject: @escaping  RCTPromiseRejectBlock
  ) -> Void {
    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
      resolve([11])
    }
  }
  
  override func constantsToExport() -> [AnyHashable : Any]! {
    return [C_UNREAD_EVENT: C_UNREAD_EVENT,C_COUNT: C_COUNT]
  }
  
  override func supportedEvents() -> [String]! {
    return [C_UNREAD_EVENT,C_COUNT]
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc
  func passDataFromNativeToRN(count:Int)  -> Void{
      self.sendEvent(withName: self.C_COUNT, body: ["count": count])
  }
  
  @objc
  func startListening() {
    if(disposableEmitter == nil){
      disposableEmitter = Observable<Int>.interval(.milliseconds(1000), scheduler: MainScheduler.instance)
        .subscribe({ longTimed in
          self.sendEvent(withName: self.C_UNREAD_EVENT, body: ["count": longTimed.element])
        });
    }
  }
  
  @objc
  func stopListening() {
    disposableEmitter?.dispose()
    disposableEmitter = nil
  }
}


