//
//  ViewController.swift
//  PassingDataBackWithAClosure
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goNext(_ sender: Any) {
        let viewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        viewController.completionHandler = { text in
            print("text = \(text)")
            return text.count
        }
        navigationController?.pushViewController(viewController, animated: true)
    }
}

