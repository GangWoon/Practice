//
//  ViewController.swift
//  PassingDataBetweenViewControllerUsingSegues
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text: String = "Send!!"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        let viewController = segue.destination is SecondViewController ? segue.destination as? SecondViewController : nil
//        viewController?.receivedText = text
//
        
//        if let viewController = segue.destination as? SecondViewController {
//            viewController.receivedText = text
//        }
        
        if segue.destination is SecondViewController {
            let viewController = segue.destination as? SecondViewController
            viewController?.receivedText = text
        }
    }
}

