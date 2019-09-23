//
//  ViewController.swift
//  PassingDataBackWithPropertiesAndFunctions
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func onUserAction(data: String) {
        print("Data received: \(data)")
    }
    
    @IBAction func forward(_ sender: UIButton) {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        secondViewController.mainViewController = self
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

