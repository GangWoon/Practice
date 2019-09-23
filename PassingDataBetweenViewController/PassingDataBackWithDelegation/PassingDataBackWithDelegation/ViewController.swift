//
//  ViewController.swift
//  PassingDataBackWithDelegation
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(_ sender: Any) {
        let viewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        viewController.delegate = self
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension ViewController: PizzaDelegate {
    func onPizzaReady(type: String) {
        print("Pizza ready. The best pizza of all pizzas is... \(type)")
    }
}
