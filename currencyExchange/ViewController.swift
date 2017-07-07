//
//  ViewController.swift
//  currencyExchange
//
//  Created by Ava Crnkovic-Rubsamen on 7/5/17.
//  Copyright © 2017 Ava Crnkovic-Rubsamen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dollarAmount: UITextField!
    @IBOutlet weak var euroAmount: UITextField!
    @IBAction func convertAction(_ sender: Any) {
        if let dollar = Double(dollarAmount.text!) {
            let euro = dollar * 0.88
            euroAmount.text = String(format: "%.2f", euro)
        } else {
            euroAmount.text = ""
            dollarAmount.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

