//
//  MenuViewController.swift
//  ChinesePinYin
//
//  Created by zyvincenthu on 2018/2/7.
//  Copyright © 2018年 Tencent. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController  {
    
    var menuItems :[String] = ["章节目录","拼音练习","拼音游戏"];
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        self.createMenu()
    }
    
    func createMenu(){
        for index in 0..<self.menuItems.count  {
            let button:UIButton = UIButton.init(frame: CGRect.init(x: 50, y: 120*index + (index + 1)*50, width: Int(UIScreen.main.bounds.width - 2*50), height: 120))
            button.setTitleColor(UIColor.black, for: UIControlState.normal)
            button.setTitle(self.menuItems[index], for: UIControlState.normal)
            self.view.addSubview(button)
        }
    }
    
}
