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
