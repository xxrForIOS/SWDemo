//
//  PresentViewController.swift
//  SwiftDemo905
//
//  Created by X.Melo on 2017/9/6.
//  Copyright © 2017年 欣欣然. All rights reserved.
//

import UIKit

// 1.定义一个闭包类型
//格式: typealias 闭包名称 = (参数名称: 参数类型) -> 返回值类型
typealias swiftBlock = (_ str: String) -> Void

class XRSwiftBlock: UIViewController {


    
    //2. 声明一个变量
    var callBack: swiftBlock?
    
    var input:UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        input = UITextField.init(frame: CGRect.init(x: 40, y: 200, width: self.view.width - 80, height: 40))
        input?.textAlignment = NSTextAlignment.center
        input?.textColor = UIColor.red
        input?.borderStyle = UITextBorderStyle.roundedRect
        input?.placeholder = "说点啥"
        input?.font = UIFont.init(name: "Menlo", size: 15)
        self.view.addSubview(input!)
        
        
        let theButton = UIButton.init(type: UIButtonType.custom)
        theButton.frame = CGRect.init(x: 30,
                                      y: input!.y + input!.height + 20,
                                      width: self.view.width - 60,
                                      height: 40)
        theButton.backgroundColor = UIColor.red
        theButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        theButton.setTitle("change color", for: UIControlState.normal)
        theButton.titleLabel?.font = UIFont.menlo(fontSize: 15)
        theButton.tag = 66;
        theButton.layer.cornerRadius = theButton.height/2
        theButton .addTarget(self, action: #selector(goBackAndTakeText(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(theButton)
    }

    func goBackAndTakeText(sender:UIButton){
        
        self.dismiss(animated: true) { 
            
            if self.callBack != nil {
                
                self.callBack!((self.input?.text!)!)
            }
        }
    }
    
    //3. 定义一个方法,方法的参数为和swiftBlock类型一致的闭包,并赋值给callBack
    func callBackBlock(_ block: @escaping swiftBlock) {
        
        callBack = block
    }
        

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
