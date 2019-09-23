//
//  SecondViewController.swift
//  PassingDataBackWithPropertiesAndFunctions
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var sendText: String = "send!"
    var mainViewController: ViewController?

    @IBAction func sendData(_ sender: UIButton) {
        mainViewController?.onUserAction(data: sendText)
    }
    
}
