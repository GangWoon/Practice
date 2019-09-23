//
//  SecondViewController.swift
//  PassingDataBackWithDelegation
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var delegate: PizzaDelegate?
    let text: String = "Pizza di Mama"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonClick(_ sender: Any) {
        delegate?.onPizzaReady(type: text)
    }
}
