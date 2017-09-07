//
//  ViewController.swift
//  SwiftDemo905
//
//  Created by X.Melo on 2017/9/5.
//  Copyright © 2017年 欣欣然. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.groupTableViewBackground
        
        let theButton = UIButton.init(type: UIButtonType.custom)
        theButton.frame = CGRect.init(x: 30, y: 200, width: self.view.width - 60, height: 40)
        theButton.backgroundColor = UIColor.red
        theButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        theButton.setTitle("change color", for: UIControlState.normal)
        theButton.titleLabel?.font = UIFont.menlo(fontSize: 15)
        theButton.tag = 66;
        theButton.layer.cornerRadius = theButton.height/2
        theButton .addTarget(self, action: #selector(changeBackGroundColor(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(theButton)
        

        self.view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(changeButtonBackGroundColor)))
    }
    
    func changeButtonBackGroundColor(){

        let vcc = XRSwiftBlock()
        self.present(vcc, animated: true)
        vcc.callBackBlock { (String) in
            
            let theButton:UIButton = self.view.viewWithTag(66) as! UIButton
            theButton.setTitle(String, for: UIControlState.normal)
            print("xx get %@",String)
        }
    }

    func changeBackGroundColor(sender:UIButton) {
        
        sender.backgroundColor = UIColor.random
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



