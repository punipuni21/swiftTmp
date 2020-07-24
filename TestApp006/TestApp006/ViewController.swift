//
//  ViewController.swift
//  TestApp006
//
//  Created by shimalab on 2020/06/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labeltest : UILabel!
    @IBOutlet var buttonTest : UIButton!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labeltest.text = "Swift Test"
        
        buttonTest.setTitle("Button", for: UIControl.State.normal)
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender : Any){
        count += 1
        if(count%2==0){
            labeltest.text = "Seift Test"
        }else{
            labeltest?.text = "tapped !"
        }
    }
}

