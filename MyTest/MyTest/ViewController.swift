//
//  ViewController.swift
//  MyTest
//
//  Created by shimalab on 2020/07/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func onButtonTap(_ sender: Any) {
        myTextField.text = "タップされました"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

