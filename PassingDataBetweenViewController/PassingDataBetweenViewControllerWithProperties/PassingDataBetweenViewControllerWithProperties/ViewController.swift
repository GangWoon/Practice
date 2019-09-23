//
//  ViewController.swift
//  PassingDataBetweenViewControllerWithProperties
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text: String = ""
    
    func initSecondViewController() {
        let viewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        viewController.receivedText = "send!!!"
    navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        initSecondViewController()
    }
}

