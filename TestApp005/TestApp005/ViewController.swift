//
//  ViewController.swift
//  TestApp005
//
//  Created by shimalab on 2020/06/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let testLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotationChange(notification:)), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc func rotationChange(notification: NSNotification){
        setLabel()
    }
    
    func setLabel(){
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
         // ラベルのサイズを設定
        testLabel.frame = CGRect(x:0, y:screenHeight-80,
                                    width:screenWidth, height:80);
               
        // ラベルの文字を設定
        testLabel.text = "Hello World!"
               
        // ラベルの色を黒に設定
        testLabel.textColor = UIColor.black
               
        // ラベルのフォントを設定
        testLabel.font = UIFont.boldSystemFont(ofSize: 30)
               
        // わかりやすくするため背景色を入れます
        testLabel.backgroundColor = UIColor(red: 0.7, green: 1.0, blue: 0.9, alpha: 1.0)
               
        // テキスト中央寄せ
        testLabel.textAlignment = NSTextAlignment.center
               
        // Viewにラベルを追加
        self.view.addSubview(testLabel)
    }

}

