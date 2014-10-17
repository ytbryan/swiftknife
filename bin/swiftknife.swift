

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
