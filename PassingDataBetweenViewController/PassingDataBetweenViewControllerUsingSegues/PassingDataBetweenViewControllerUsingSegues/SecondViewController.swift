//
//  SecondViewController.swift
//  PassingDataBetweenViewControllerUsingSegues
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedText: String = ""
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = receivedText
        }
    }
}
