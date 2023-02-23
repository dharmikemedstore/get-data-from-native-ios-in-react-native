//
//  DashboardViewController.swift
//  HealthMesurment
//
//  Created by EMedStore on 02/11/22.
//

import Foundation
import UIKit

@objc class DashboardViewController: UIViewController {

  @IBOutlet var btnBack: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  @objc public func callFunction() {
    print("HELLO WORLD")
    let vc = SecondViewController()
    self.navigationController?.present(vc, animated: false)
  }
  
  
  @IBAction func btnClick() {

    if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.goToReactNative()
    }
    

  }
  
}
