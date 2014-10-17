//
//  Color.swift
//  SwiftKnife
//
//  Created by Bryan Lim on 6/23/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func CGRGB(rgbValue:NSInteger) -> CGColorRef{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0).CGColor
    }
    
    class func CGRGBA(rgbValue:NSInteger, alpha:CGFloat) -> CGColorRef{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0)).CGColor
    }
    
    class func RGB(rgbValue:NSInteger) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0)
    }
    
    class func RGBA(rgbValue:NSInteger, alpha:CGFloat) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0))
    }
    
    
    
    //Additional colors
    class var red: UIColor {
    return RGB(0xE74C3C)
    }
    
    class var blue: UIColor {
    return RGB(0x3498DB)
    }
    
    class var flatRed: UIColor{
    return RGB(0xE74C3C)
    }
    
    class var flatDarkRed: UIColor{
    return RGB(0xC0392B)
    }
    
    class var flatGreen: UIColor{
    return RGB(0x2ECC71)
    }
    
    class var flatDarkGreen: UIColor{
    return RGB(0x27AE60)
    }
    
    class var flatBlue: UIColor{
    return RGB(0x3498DB)
    }
    
    class var flatDarkBlue: UIColor{
    return RGB(0x2980B9)
    }
    
    class var flatTeal: UIColor{
    return RGB(0x1ABC9C)
    }
    
    class var flatDarkTeal: UIColor{
    return RGB(0x16A085)
    }
    
    class var flatPurple: UIColor{
    return RGB(0x9B59B6)
    }
    
    class var flatDarkPurple: UIColor{
    return RGB(0x8E44AD)
    }
    
    
    class var flatYellow: UIColor{
    return RGB(0xF1C40F)
    }
    
    class var flatDarkYellow: UIColor{
    return RGB(0xF39C12)
    }
    
    class var flatOrange: UIColor{
    return RGB(0xE67E22)
    }
    
    class var flatDarkOrange: UIColor{
    return RGB(0xD35400)
    }
    
    class var flatGray: UIColor{
    return RGB(0x95A5A6)
    }
    
    class var flatDarkGray: UIColor{
    return RGB(0x7F8C8D)
    }
    
    class var flatWhite: UIColor{
    return RGB(0xECF0F1)
    }
    
    class var flatDarkWhite: UIColor{
    return RGB(0xBDC3C7)
    }
    
    class var flatBlack: UIColor{
    return RGB(0x34495E)
    }
    
    class var flatDarkBlack: UIColor{
    return RGB(0x2C3E50)
    }
    
    //CGColor
    class var CGRed: CGColorRef {
    return RGB(0xE74C3C).CGColor
    }
    
    class var CGBlue: CGColorRef {
    return RGB(0x3498DB).CGColor
    }
    
    class var CGFlatRed: CGColorRef{
    return RGB(0xE74C3C).CGColor
    }
    
    class var CGFlatDarkRed: CGColorRef{
    return RGB(0xC0392B).CGColor
    }
    
    class var CGFlatGreen: CGColorRef{
    return RGB(0x2ECC71).CGColor
    }
    
    class var CGFlatDarkGreen: CGColorRef{
    return RGB(0x27AE60).CGColor
    }
    
    class var CGFlatBlue: CGColorRef{
    return RGB(0x3498DB).CGColor
    }
    
    class var CGFlatDarkBlue: CGColorRef{
    return RGB(0x2980B9).CGColor
    }
    
    class var CGFlatTeal: CGColorRef{
    return RGB(0x1ABC9C).CGColor
    }
    
    class var CGFlatDarkTeal: CGColorRef{
    return RGB(0x16A085).CGColor
    }
    
    class var CGFlatPurple: CGColorRef{
    return RGB(0x9B59B6).CGColor
    }
    
    class var CGFlatDarkPurple: CGColorRef{
    return RGB(0x8E44AD).CGColor
    }
    
    
    class var CGFlatYellow: CGColorRef{
    return RGB(0xF1C40F).CGColor
    }
    
    class var CGFlatDarkYellow: CGColorRef{
    return RGB(0xF39C12).CGColor
    }
    
    class var CGFlatOrange: CGColorRef{
    return RGB(0xE67E22).CGColor
    }
    
    class var CGFlatDarkOrange: CGColorRef{
    return RGB(0xD35400).CGColor
    }
    
    class var CGFlatGray: CGColorRef{
    return RGB(0x95A5A6).CGColor
    }
    
    class var CGFlatDarkGray: CGColorRef{
    return RGB(0x7F8C8D).CGColor
    }
    
    class var CGFlatWhite: CGColorRef{
    return RGB(0xECF0F1).CGColor
    }
    
    class var CGFlatDarkWhite: CGColorRef{
    return RGB(0xBDC3C7).CGColor
    }
    
    class var CGFlatBlack: CGColorRef{
    return RGB(0x34495E).CGColor
    }
    
    class var CGFlatDarkBlack: CGColorRef{
    return RGB(0x2C3E50).CGColor
    }
    
    
}