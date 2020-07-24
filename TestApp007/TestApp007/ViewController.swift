//
//  ViewController.swift
//  TestApp007
//
//  Created by shimalab on 2020/06/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ラベルのインスタンス生成
        let label = UILabel()
        
        var count = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
     
            // ViewControllerの背景色
            self.view.backgroundColor = UIColor.init(
                                  red:0.71, green: 1.0, blue: 0.95, alpha: 1)
     
            // スクリーンの横縦幅
            let screenWidth:CGFloat = self.view.frame.width
            let screenHeight:CGFloat = self.view.frame.height
            
     
            // ボタンのインスタンス生成
            let button = UIButton()
            
            // ボタンの位置とサイズを設定
            button.frame = CGRect(x:screenWidth/4, y:screenHeight/2,
                           width:screenWidth/2, height:50)
            
            // ボタンのタイトルを設定
            button.setTitle("Tap me!", for:UIControl.State.normal)
            
            // タイトルの色
    //        button.setTitleColor(UIColor.white, for: .normal)
            
            // ボタンのフォントサイズ
            button.titleLabel?.font =  UIFont.systemFont(ofSize: 36)
            
            // 背景色
            button.backgroundColor = UIColor.init(
                                     red:0.9, green: 0.9, blue: 0.9, alpha: 1)
            
            // タップされたときのaction
            button.addTarget(self,
                             action: #selector(ViewController.buttonTapped(sender:)),
                   for: .touchUpInside)
            
            // Viewにボタンを追加
            self.view.addSubview(button)
     
            
            // ラベルのサイズを設定
            label.frame = CGRect(x:screenWidth/4, y:200,
                          width:screenWidth/2, height:50);
            
            // ラベルの文字を設定
            label.text = "Swift Test"
            
            // 文字を中央にalignする
            label.textAlignment = NSTextAlignment.center
            
            // ラベルのフォントサイズ
            label.font = UIFont.systemFont(ofSize: 36)
            
            // Viewにラベルを追加
            self.view.addSubview(label)
            
            
        }
     
        @objc func buttonTapped(sender : Any) {
            count += 1
            if(count%2 == 0){
                label.text = "Swift Test"
            }
            else{
                label.text = "tapped !"
            }
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


}

