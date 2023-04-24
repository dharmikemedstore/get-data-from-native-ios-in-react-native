//
//  DashboardViewController.swift
//  HealthMesurment
//
//  Created by EMedStore on 02/11/22.
//

import Foundation
import UIKit

protocol Messageprotocol {
  func passDataFromNativeToRN(count:Int)
}

@objc class DashboardViewController: UIViewController {

  @IBOutlet var btnBack: UIButton!
  @IBOutlet var txt: UITextField!
  @objc var textValue = ""
  var delegate: Messageprotocol? = nil
  
  var passedData: String?
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  @objc public func callFunction() {
    print("HELLO WORLD", passedData ?? "NO DATA")
    let vc = SecondViewController()
    self.navigationController?.present(vc, animated: false)
  }
  
  
  @IBAction func btnClick() {
    
    print("CHECK TEXT VALUE ====>>", txt.text ?? "NO DATA")
    self.textValue = self.txt.text ?? "NO DATA"

    let defaults = UserDefaults.standard
    defaults.setValue(self.textValue, forKey: "textValue")
    defaults.synchronize()
    
//    delegate?.passDataFromNativeToRN(count: 10)
//    delegate?.passDataFromNativeToRN(count: 15000)
    
    let msg = Message()
    msg.passDataFromNativeToRN(count: 15000)
    
    if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
      appDelegate.goToReactNative()
    }
  }
  
  @IBAction func btnNext() {
    let storyBoard: UIStoryboard = UIStoryboard(name: "main", bundle: nil)
    let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
}
