

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
//
//  MaterialColor.swift
//  Colors
//
//  Created by Bryan Lim on 10/5/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    // Google's Material Design UI Color Palette:
    // http://www.google.com/design/spec/style/color.html#color-ui-color- palette
    
    //RED
    class var red50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var red100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var red200: UIColor {
    return RGB(0xf69988)
    }
    
    class var red300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var red400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var red500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var red600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var red700: UIColor {
    return RGB(0xd01716)
    }
    
    class var red800: UIColor {
    return RGB(0xc41411)
    }
    
    class var red900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var redA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var redA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var redA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var redA700: UIColor {
    return RGB(0xe00032)
    }
    
    class var CGRed50: CGColorRef {
    return RGB(0xfde0dc).CGColor
    }
    
    class var CGRed100: CGColorRef {
    return RGB(0xf9bdbb).CGColor
    }
    
    class var CGRed200: CGColorRef {
    return RGB(0xf69988).CGColor
    }
    
    class var CGRed300: CGColorRef {
    return RGB(0xf36c60).CGColor
    }
    
    class var CGRed400: CGColorRef {
    return RGB(0xe84e40).CGColor
    }
    
    class var CGRed500: CGColorRef {
    return RGB(0xe51c23).CGColor
    }
    
    class var CGRed600: CGColorRef {
    return RGB(0xdd191d).CGColor
    }
    
    class var CGRed700: CGColorRef {
    return RGB(0xd01716).CGColor
    }
    
    class var CGRed800: CGColorRef {
    return RGB(0xc41411).CGColor
    }
    
    class var CGRed900: CGColorRef {
    return RGB(0xb0120a).CGColor
    }
    
    class var CGRedA100: CGColorRef {
    return RGB(0xff7997).CGColor
    }
    
    class var CGRedA200: CGColorRef {
    return RGB(0xff5177).CGColor
    }
    
    class var CGRedA400: CGColorRef {
    return RGB(0xff2d6f).CGColor
    }
    
    class var CGRedA700: CGColorRef {
    return RGB(0xe00032).CGColor
    }
    
    //orange
    class var pink50: UIColor {
    return RGB(0xfce4ec)
    }
    
    class var pink100: UIColor {
    return RGB(0xf8bbd0)
    }
    
    class var pink200: UIColor {
    return RGB(0xf48fb1)
    }
    
    class var pink300: UIColor {
    return RGB(0xf06292)
    }
    
    class var pink400: UIColor {
    return RGB(0xec407a)
    }
    
    class var pink500: UIColor {
    return RGB(0xe91e63)
    }
    
    class var pink600: UIColor {
    return RGB(0xd81b60)
    }
    
    class var pink700: UIColor {
    return RGB(0xc2185b)
    }
    
    class var pink800: UIColor {
    return RGB(0xad1457)
    }
    
    class var pink900: UIColor {
    return RGB(0x880e4f)
    }
    
    class var pinkA100: UIColor {
    return RGB(0xff80ab)
    }
    
    class var pinkA200: UIColor {
    return RGB(0xff4081)
    }
    
    class var pinkA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var pinkA700: UIColor {
    return RGB(0xe00032)
    }
    
    //Purple
    class var purple50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var purple100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var purple200: UIColor {
    return RGB(0xf69988)
    }
    
    class var purple300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var purple400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var purple500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var purple600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var purple700: UIColor {
    return RGB(0xd01716)
    }
    
    class var purple800: UIColor {
    return RGB(0xc41411)
    }
    
    class var purple900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var purpleA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var purpleA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var purpleA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var purpleA700: UIColor {
    return RGB(0xe00032)
    }
    
    //Deep Purple
    class var deepPurple50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var deepPurple100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var deepPurple200: UIColor {
    return RGB(0xf69988)
    }
    
    class var deepPurple300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var deepPurple400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var deepPurple500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var deepPurple600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var deepPurple700: UIColor {
    return RGB(0xd01716)
    }
    
    class var deepPurple800: UIColor {
    return RGB(0xc41411)
    }
    
    class var deepPurple900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var deepPurpleA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var deepPurpleA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var deepPurpleA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var deepPurpleA700: UIColor {
    return RGB(0xe00032)
    }
    
    
    //Indigo
    class var indigo50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var indigo100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var indigo200: UIColor {
    return RGB(0xf69988)
    }
    
    class var indigo300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var indigo400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var indigo500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var indigo600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var indigo700: UIColor {
    return RGB(0xd01716)
    }
    
    class var indigo800: UIColor {
    return RGB(0xc41411)
    }
    
    class var indigo900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var indigoA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var indigoA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var indigoA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var indigoA700: UIColor {
    return RGB(0xe00032)
    }
    
    //Pink
    class var blue50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var blue100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var blue200: UIColor {
    return RGB(0xf69988)
    }
    
    class var blue300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var blue400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var blue500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var blue600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var blue700: UIColor {
    return RGB(0xd01716)
    }
    
    class var blue800: UIColor {
    return RGB(0xc41411)
    }
    
    class var blue900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var blueA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var blueA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var blueA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var blueA700: UIColor {
    return RGB(0xe00032)
    }
    
    //light blue
    class var lightBlue50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var lightBlue100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var lightBlue200: UIColor {
    return RGB(0xf69988)
    }
    
    class var lightBlue300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var lightBlue400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var lightBlue500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var lightBlue600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var lightBlue700: UIColor {
    return RGB(0xd01716)
    }
    
    class var lightBlue800: UIColor {
    return RGB(0xc41411)
    }
    
    class var lightBlue900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var lightBlueA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var lightBlueA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var lightBlueA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var lightBlueA700: UIColor {
    return RGB(0xe00032)
    }
    
    //cyan
    
    class var cyan50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var cyan100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var cyan200: UIColor {
    return RGB(0xf69988)
    }
    
    class var cyan300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var cyan400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var cyan500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var cyan600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var cyan700: UIColor {
    return RGB(0xd01716)
    }
    
    class var cyan800: UIColor {
    return RGB(0xc41411)
    }
    
    class var cyan900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var cyanA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var cyanA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var cyanA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var cyanA700: UIColor {
    return RGB(0xe00032)
    }
    
    
    //Teal
    class var teal50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var teal100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var teal200: UIColor {
    return RGB(0xf69988)
    }
    
    class var teal300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var teal400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var teal500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var teal600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var teal700: UIColor {
    return RGB(0xd01716)
    }
    
    class var teal800: UIColor {
    return RGB(0xc41411)
    }
    
    class var teal900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var tealA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var tealA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var tealA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var tealA700: UIColor {
    return RGB(0xe00032)
    }
    
    
    //Green
    //Pink
    
    class var green50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var green100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var green200: UIColor {
    return RGB(0xf69988)
    }
    
    class var green300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var green400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var green500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var green600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var green700: UIColor {
    return RGB(0xd01716)
    }
    
    class var green800: UIColor {
    return RGB(0xc41411)
    }
    
    class var green900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var greenA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var greenA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var greenA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var greenA700: UIColor {
    return RGB(0xe00032)
    }
    
    //Pink
    class var lightGreen50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var lightGreen100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var lightGreen200: UIColor {
    return RGB(0xf69988)
    }
    
    class var lightGreen300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var lightGreen400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var lightGreen500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var lightGreen600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var lightGreen700: UIColor {
    return RGB(0xd01716)
    }
    
    class var lightGreen800: UIColor {
    return RGB(0xc41411)
    }
    
    class var lightGreen900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var lightGreenA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var lightGreenA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var lightGreenA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var lightGreenA700: UIColor {
    return RGB(0xe00032)
    }
    
    //lime
    class var lime50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var lime100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var lime200: UIColor {
    return RGB(0xf69988)
    }
    
    class var lime300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var lime400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var lime500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var lime600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var lime700: UIColor {
    return RGB(0xd01716)
    }
    
    class var lime800: UIColor {
    return RGB(0xc41411)
    }
    
    class var lime900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var limeA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var limeA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var limeA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var limeA700: UIColor {
    return RGB(0xe00032)
    }
    
    //yellow
    class var yellow50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var yellow100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var yellow200: UIColor {
    return RGB(0xf69988)
    }
    
    class var yellow300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var yellow400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var yellow500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var yellow600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var yellow700: UIColor {
    return RGB(0xd01716)
    }
    
    class var yellow800: UIColor {
    return RGB(0xc41411)
    }
    
    class var yellow900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var yellowA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var yellowA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var yellowA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var yellowA700: UIColor {
    return RGB(0xe00032)
    }
    
    //amber
    class var amber50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var amber100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var amber200: UIColor {
    return RGB(0xf69988)
    }
    
    class var amber300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var amber400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var amber500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var amber600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var amber700: UIColor {
    return RGB(0xd01716)
    }
    
    class var amber800: UIColor {
    return RGB(0xc41411)
    }
    
    class var amber900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var amberA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var amberA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var amberA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var amberA700: UIColor {
    return RGB(0xe00032)
    }
    
    //orange
    class var orange50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var orange100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var orange200: UIColor {
    return RGB(0xf69988)
    }
    
    class var orange300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var orange400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var orange500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var orange600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var orange700: UIColor {
    return RGB(0xd01716)
    }
    
    class var orange800: UIColor {
    return RGB(0xc41411)
    }
    
    class var orange900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var orangeA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var orangeA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var orangeA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var orangeA700: UIColor {
    return RGB(0xe00032)
    }
    
    //deepOrange
    class var deepOrange50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var deepOrange100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var deepOrange200: UIColor {
    return RGB(0xf69988)
    }
    
    class var deepOrange300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var deepOrange400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var deepOrange500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var deepOrange600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var deepOrange700: UIColor {
    return RGB(0xd01716)
    }
    
    class var deepOrange800: UIColor {
    return RGB(0xc41411)
    }
    
    class var deepOrange900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var deepOrangeA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var deepOrangeA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var deepOrangeA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var deepOrangeA700: UIColor {
    return RGB(0xe00032)
    }
    
    //brown
    class var brown50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var brown100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var brown200: UIColor {
    return RGB(0xf69988)
    }
    
    class var brown300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var brown400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var brown500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var brown600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var brown700: UIColor {
    return RGB(0xd01716)
    }
    
    class var brown800: UIColor {
    return RGB(0xc41411)
    }
    
    class var brown900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var brownA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var brownA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var brownA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var brownA700: UIColor {
    return RGB(0xe00032)
    }
    
    //grey
    class var grey50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var grey100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var grey200: UIColor {
    return RGB(0xf69988)
    }
    
    class var grey300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var grey400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var grey500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var grey600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var grey700: UIColor {
    return RGB(0xd01716)
    }
    
    class var grey800: UIColor {
    return RGB(0xc41411)
    }
    
    class var grey900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var greyA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var greyA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var greyA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var greyA700: UIColor {
    return RGB(0xe00032)
    }
    
    //blueGrey
    class var blueGrey50: UIColor {
    return RGB(0xfde0dc)
    }
    
    class var blueGrey100: UIColor {
    return RGB(0xf9bdbb)
    }
    
    class var blueGrey200: UIColor {
    return RGB(0xf69988)
    }
    
    class var blueGrey300: UIColor {
    return RGB(0xf36c60)
    }
    
    class var blueGrey400: UIColor {
    return RGB(0xe84e40)
    }
    
    class var blueGrey500: UIColor {
    return RGB(0xe51c23)
    }
    
    class var blueGrey600: UIColor {
    return RGB(0xdd191d)
    }
    
    class var blueGrey700: UIColor {
    return RGB(0xd01716)
    }
    
    class var blueGrey800: UIColor {
    return RGB(0xc41411)
    }
    
    class var blueGrey900: UIColor {
    return RGB(0xb0120a)
    }
    
    class var blueGreyA100: UIColor {
    return RGB(0xff7997)
    }
    
    class var blueGreyA200: UIColor {
    return RGB(0xff5177)
    }
    
    class var blueGreyA400: UIColor {
    return RGB(0xff2d6f)
    }
    
    class var blueGreyA700: UIColor {
    return RGB(0xe00032)
    }
    
}

//
//  String.swift
//  Swifeknife
//
//  Created by Bryan Lim on 6/20/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation

extension String {

    var array: [Character] {
    get { return Array(self) }
    }

    var length: Int {
    get { return countElements(self) }
    }

    var size: Int {
    get { return countElements(self) }
    }

    func upper() -> String? {
        if self.isEmpty { return nil }
        return self.uppercaseString
    }

    func lower() -> String? {
        if self.isEmpty { return nil }
        return self.lowercaseString
    }

    func toArray() -> [Character] {
        return Array(self)
    }

    //beta 5
//    func substring(value:Int) -> String {
//
//
//
//        return self.substringFromIndex(value)
////        return self.bridgeToObjectiveC().substringFromIndex(value)
//    }

    func print() {
        for eachChar in self {
            println(eachChar)
        }
    }

    //beta 5
//    func indexOf(index:String) -> NSRange {
//        return self.rangeOfString(index, options: nil, range: nil, locale: nil)
////        return self.bridgeToObjectiveC().rangeOfString(index)
//    }

    func first() -> String? {
        if(self.isEmpty) {return nil}
        return String(Array(self)[0])
    }

    func last() -> String? {
        if(self.isEmpty) {return nil}
        return String(Array(self)[self.length-1])
    }

    subscript (i: Int) -> String?{
        if(self.isEmpty) {return nil}
            return String(Array(self)[i])
    }
}

//
//  swiftknife.swift
//  swiftknife
//
//  Created by ytbryan and Koh Poh Chiat on 6/10/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit

class swiftknife {
    init(){

    }
}

var _file = __FILE__
var _line = __LINE__
var _col = __COLUMN__
var _func = __FUNCTION__

extension CALayer {
    class func mark(element:AnyObject, width:CGFloat, color: CGColorRef) -> AnyObject{
        //element.layer.borderWidth
        //element.layer.borderColor
        element.layer.borderColor = color
        element.layer.borderWidth = width
        return element
    }
}


//bring back yes and no
let NO = false
let YES = true

class S: swiftknife {

    override init(){

    }

    class var sharedInstance: S {
    struct Singleton {
        static let instance = S()
        }
        return Singleton.instance
    }

    //root url for HTTPClient
//    var root_url = ""
//    var rootURL:String {
//        get {return self.root_url}
//        set(input) { self.root_url = input}
//    }
}

class Device {
    class var height:CGFloat{
    return UIScreen.mainScreen().bounds.height
    }

    class var width:CGFloat {
    return UIScreen.mainScreen().bounds.width
    }

    class func bottomBy(value:CGFloat)->CGFloat{
        return UIScreen.mainScreen().bounds.height - value
    }

    class func rightBy(value:CGFloat)->CGFloat{
        return UIScreen.mainScreen().bounds.width - value
    }

    class func centerIt(value:CGFloat) -> CGFloat {
        puts(UIScreen.mainScreen().bounds.width/2)
        return (UIScreen.mainScreen().bounds.width/2 - value/2)
    }
}

extension Int {
    func times(task: () -> ()) {
        for i in 0..<self {
            task()
        }
    }
}

extension UIDevice { }

extension UIScreen {
    //access the current width and height of the screen
    var info:CGRect{
    get { return UIScreen.mainScreen().bounds }
    }

    //get phone orientation
    class func getOrientation() {

    }
}


extension S {
    //according to https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIDevice_Class/index.html#//apple_ref/occ/instp/UIDevice/systemName
    //commenting out because UIDevice is possibly not ready in this version of swift or xcode?
    //    var name: String {
    //    get {return UIDevice.name}
    //    }
    //
    //    var system: String {
    //    get {return UIDevice.systemName}
    //    }
    //
    //    var version: String {
    //    get {return UIDevice.systemVersion}
    //    }
    //
    //    var model: String {
    //    get {return UIDevice.model}
    //    }
    //
    //    var orientation: UIDeviceOrientation {
    //    get { return UIDevice.orientation }
    //    }
    //
    //    var battery: UIDeviceOrientation {
    //    get { return UIDevice.batteryLevel }
    //    }
}

extension S {

    class func inspect<T>(element: T, _ file:String=__FILE__, _ column:Int=__COLUMN__, line:Int=__LINE__, function:String=__FUNCTION__) -> T {
        println("\(element) -- line:\(line),col:\(column), name:\(function) -- \(file)")
        return element
    }

    class func p <T>(value: T){
        println(value)
    }

    class func puts <T>(value: T){
        println(value)
    }

    class func show() {
        //show a toast
    }
}

// testing extension
extension S {
    class func assert(expression: @autoclosure () -> BooleanType, message: String, toAssert: Bool = true) {
//        XCTAssertEquals(expression: expression, message: message)
    }
}

func inspect<T>(element: T, _ file:String=__FILE__, _ column:Int=__COLUMN__, line:Int=__LINE__, function:String=__FUNCTION__) -> T {
    println("\(element) -- line:\(line),col:\(column), name:\(function) -- \(file)")
    return element
}

func p<T>(element: T) {
    println(element)
}

func puts<T>(element: T) {
    println(element)
}

func log<T>(element: T) {
    println(element)
}

func rect(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat) -> CGRect{
    return CGRectMake(x, y, width, height)
}

func rect(x:CGFloat,y:CGFloat,square:CGFloat) -> CGRect {
    return CGRectMake(x, y, square, square)
}

func rect(xy:CGFloat,square:CGFloat) -> CGRect {
    return CGRectMake(xy, xy, square, square)
}

func mark(element:AnyObject, width:CGFloat, color: CGColorRef) -> AnyObject{
    element.layer.borderColor = color
    element.layer.borderWidth = width
    return element
}

func dialog(t:String, msg:String, viewController: UIViewController) {
    var alert = UIAlertController(title: t, message: msg, preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action: UIAlertAction!) in
        println("Dismiss")
    }))
    viewController.presentViewController(alert, animated: true, completion: nil)
}

func show(t:String, msg:String, viewController: UIViewController) {
    var alert = UIAlertController(title: t, message: msg, preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action: UIAlertAction!) in
        println("OK")
    }))

    alert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
        println("Dismiss")
    }))
    viewController.presentViewController(alert, animated: true, completion: nil)
}

func sheet<T:UIActionSheetDelegate>(t:String, cancel:String, destruct:String, other: String, vc: T, vc2:UIViewController,  more: String...) {

    let actionSheet = UIActionSheet(title: t,
        delegate: vc,
        cancelButtonTitle: cancel,
        destructiveButtonTitle: destruct,
        otherButtonTitles: other)

    actionSheet.showInView(vc2.view)
}
