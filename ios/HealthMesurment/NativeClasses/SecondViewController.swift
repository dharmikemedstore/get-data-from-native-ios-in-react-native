//
//  SecondViewController.swift
//  HealthMesurment
//
//  Created by EMedStore on 02/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
  
  @IBAction func btnNext() {
    
    self.navigationController?.popViewController(animated: true)

  }

}
