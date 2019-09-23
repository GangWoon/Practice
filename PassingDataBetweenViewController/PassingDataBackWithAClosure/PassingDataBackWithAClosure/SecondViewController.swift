//
//  SecondViewController.swift
//  PassingDataBackWithAClosure
//
//  Created by Cloud on 23/09/2019.
//  Copyright © 2019 Cloud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var completionHandler:((String) -> Int)?
    
    @IBAction func onButtonTap(_ sender: Any) {
        let result = completionHandler?("FUS-ROH-DAH!!!")
        print("completionHandler returns... \(result!)")
    }
    
}
