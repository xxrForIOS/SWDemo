//
//  XExtension.swift
//  SwiftDemo905
//
//  Created by X.Melo on 2017/9/6.
//  Copyright © 2017年 欣欣然. All rights reserved.
//

import UIKit

class XExtension: NSObject {

}

//MARK:- color
extension UIColor {

    //http://www.hangge.com/blog/cache/detail_1413.html
    open class var XXrandom__: UIColor {
        
        get {
            
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}

extension UIColor {
    
    class var random:UIColor {
        
        let red = CGFloat(arc4random()%256)/255.0
        let green = CGFloat(arc4random()%256)/255.0
        let blue = CGFloat(arc4random()%256)/255.0
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

//MARK:- UIView
extension UIView {
    
    
    var x: CGFloat {
    
        return self.frame.origin.x
    }
    
    var y: CGFloat {
        
        return self.frame.origin.y
    }
    
    var width: CGFloat {
        
        return self.frame.size.width
    }
    
    var height: CGFloat {
        
        return self.frame.size.height
    }
    
    func x(x:CGFloat) -> () {
        
        var rect = self.frame
        rect.origin.x = x
        self.frame = rect
    }
    
    func y(y: CGFloat) {
        var rect = self.frame
        rect.origin.y = y
        self.frame = rect
    }
    
    func width(width: CGFloat) {
        var rect = self.frame
        rect.size.width = width
        self.frame = rect
    }
    
    func height(height: CGFloat) {
        var rect = self.frame
        rect.size.width = height
        self.frame = rect
    }
}
