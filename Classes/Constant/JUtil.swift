//
//  JUtil.swift
//  JeckyMenu
//
//  Created by Jecky on 14-10-2.
//  Copyright (c) 2014年 njut. All rights reserved.
//

import UIKit

class JUtil: NSObject {

    /**
    根据输入16进制数据，得到UIColor对象    
    :param: hexString
    :returns: UIColor对象
    */
    class func colorWithHexString(hexString: NSString) -> UIColor {
        var cString:NSString = hexString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        // String should be 6 or 8 characters
        if cString.length < 6 {
            return UIColor.clearColor()
        }
        
        // strip 0X if it appears
        if cString.hasPrefix("0X") {
            cString = cString .substringFromIndex(2)
        }
        if cString .hasPrefix("#") {
            cString = cString .substringFromIndex(1)
        }
        
        if cString.length != 6 {
            return UIColor.clearColor()
        }
        
        // Separate into r, g, b substrings
        var rString:NSString = cString.substringWithRange(NSMakeRange(0, 2))
        var gString:NSString = cString.substringWithRange(NSMakeRange(2, 2))
        var bString:NSString = cString.substringWithRange(NSMakeRange(4, 2))
        
        // Scan values
        var r:UInt32 = UInt32.min
        var g:UInt32 = UInt32.min
        var b:UInt32 = UInt32.min
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        let newRed   = CGFloat(Double(r) / 255.0)
        let newGreen = CGFloat(Double(g) / 255.0)
        let newBlue  = CGFloat(Double(b) / 255.0)
        return UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }

}
