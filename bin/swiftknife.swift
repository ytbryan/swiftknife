

//
//  $Array.swift
//  swiftknife
//
//  Created by Poh Chiat on 16/6/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation

extension S {
    
    ///ARRAY
    class func first <T>(list: [T]) -> T? {
        if list.count == 0 {
            return nil
        } else {
            return list[0]
        }
    }
    
    class func initial <T>(list: [T], n: Int = 1) -> [T]{
        if n > list.count {
            return Array(list[0..<list.count])
        } else{
            return Array(list[0..<n])
        }
    }
    
    class func last <T>(list: [T], n: Int = 1) -> [T] {
        if n > list.count {
            return list
        } else{
            return Array(list[list.count-n..<list.count])
        }
    }
    
    class func rest <T>(list: [T], index: Int = 0) -> [T]{
        if index > list.count {
            return []
        } else {
            return Array(list[index..<list.count])
        }
    }
    
    class func compact <T:Equatable>(list: [T?]) -> [T]{
        var result = [T]()
        
        for i in list {
            if i != nil {
                result.append(i!)
            }
        }
        
        return result
    }
    
    class func compact(list: [Bool]) -> [Bool]{
        return list.filter( { (elem: Bool) -> Bool in
            return elem
            })
    }
    
    // can't be tested. xcode explodes when uncommented
    //    class func flatten <T>(list: [T]) -> [T]{
    //        var result = [T]()
    //        return flatten(list, result: result)
    //    }
    //
    //    class func flatten<T> (list: [T], result: [T]) -> [T] {
    //        for elem in list {
    //            if elem is Array {
    //                result += flatten(elem, result)
    //            } else {
    //                result += elem
    //            }
    //        }
    //    }
    
    class func without <T: Equatable>(list: [T], values: T...) -> [T]{
        var result = [T]()
        for elem in list {
            if !containsWithinAllLists(elem, lists: values) {
                result.append(elem)
            }
        }
        return result
    }
    
    class func partition <T>(list: [T], predicate: (T) -> Bool) -> (pass: [T], fail: [T]) {
        var pass: [T] = [T]()
        var fail: [T] = [T]()
        
        for elem in list {
            if predicate(elem) {
                pass.append(elem)
            } else {
                fail.append(elem)
            }
        }
        
        return (pass, fail)
    }
    
    class func uniq <T: Equatable>(list: [T]) -> [T]{
        var result = [T]()
        for elem in list {
            if !containsWithinAllLists(elem, lists: result) {
                result.append(elem)
            }
        }
        
        return result
    }
    
    class func uniq <T: Hashable>(list: [T]) -> [T] {
        var hashSet = Dictionary<T,Bool>()
        for elem in list {
            hashSet[elem] = true
        }
        
        var result = [T]()
        for (key,value) in hashSet {
            result.append(key)
        }
        
        return result
    }
    
    class func containsWithinAllLists <T: Equatable> (elem: T, lists: [T]...) -> Bool {
        for list in lists {
            var listHasElem = false
            for compareElem in list {
                if elem == compareElem {
                    listHasElem = true
                }
            }
            if listHasElem == false {
                return false
            }
        }
        return true
    }
    
    class func containsWithinAllLists <T: Equatable> (elem: T, lists: [[T]]) -> Bool {
        for list in lists {
            var listHasElem = false
            for compareElem in list {
                if elem == compareElem {
                    listHasElem = true
                }
            }
            if listHasElem == false {
                return false
            }
        }
        
        return true
    }
    
    class func union <T: Equatable>(lists: [T]...) -> [T] {
        var allList = [T]()
        for list in lists {
            allList += list
        }
        allList = uniq(allList)
        return allList
    }
    
    class func intersection <T: Equatable>(lists: [T]...) -> [T]{
        var allList = [T]()
        var result = [T]()
        for list in lists {
            allList += list
        }
        allList = uniq(allList)
        
        for elem in allList {
            if containsWithinAllLists(elem, lists: lists) {
                result.append(elem)
            }
        }
        return result
    }
    
    class func difference <T: Equatable>(list: [T], others: [T]...) -> [T]{
        var result = [T]()
        for elem in list {
            var toRemove = false
            for list in others {
                if containsWithinAllLists(elem, lists: list) {
                    toRemove = true
                    break
                }
            }
            if !toRemove {
                result.append(elem)
            }
        }
        return result
    }
    
    class func zip <T>(lists: [T]...) -> [[T]]{
        var zipped = [[T]]()
        // find min sized list
        var min = lists[0].count
        for list in lists {
            if list.count < min {
                min = list.count
            }
        }
        
        // perform zipping
        for i in 0..<min {
            var toInsert = [T]()
            for list in lists {
                toInsert.append(list[i])
            }
            zipped.append(toInsert)
        }
        return zipped
    }
    
    class func indexOf <T: Equatable>(list: [T], search: T) -> Int?{
        for index in 0..<list.count {
            if list[index] == search {
                return index
            }
        }
        return nil
    }
    
    // TODO: untested
    class func lastIndexOf <T: Equatable>(list: [T], search: T) -> Int?{
        for var index = list.count-1; index > 0; index-- {
            if list[index] == search {
                return index
            }
        }
        return nil
    }
    
    // uses binary search to determine the index at which the value
    // should be inserted in to maintain the sorted order
    class func sortedIndex <T: Comparable>(list: [T], value: T) -> Int{
        var low = 0
        var mid = 0
        var high = list.count
        
        while ( low < high ){
            mid = ((low+high) / 2) as Int
            if list[mid] < value{
                low = mid+1
            } else {
                high = mid
            }
        }
        return low
    }
    
    class func range (start: Int = 0, stop: Int, step: Int = 1) -> [Int]{
        var range = [Int]()
        
        if step == 0 {
            return range
        }
        if start > stop && step > 0{
            return range
        }
        if start < stop && step < 0 {
            return range
        }
        
        var value = start
        while true {
            range.append(value)
            value += step
            
            if step < 0 && value <= stop {
                break;
            } else if step > 0 && value >= stop {
                break;
            }
        }
        return range
    }
}
//
//  $Collection.swift
//  swiftknife
//
//  Created by Poh Chiat on 16/6/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation

extension S {
    
    /// Collection
    class func each<T>(list: [T]) -> [T]{
        for eachItem in list {
            println(eachItem)
        }
        return list //return list for chaining
    }
    
    // more general version of each
    class func each<T> (list: [T], block: (elem: T) -> T) -> [T] {
        for i in list {
            block(elem: i)
        }
        return list
    }
    
    //iterator is a function here
    class func map<T>(list: [T], iterator: (T...)) -> [T]{
        //this function should work on this list
        for eachItem in list {
            // work on it and push it back
        }
        return list //return list for chaining
    }
    
    class func map<T> (list: [T], block: (elem: T) -> T) -> [T] {
        var result = [T]()
        for i in list {
            result.append(block(elem: i))
        }
        return result
    }
    
    
    //    class func reduce<T>(list: [T], iterator: Int, line: String) -> [T]{
    //        if (iterator != nil) {
    //            println(String)
    //        }
    //        else {
    //            println(String)
    //        }
    //        return list //return list for chaining
    //    }
    //
    //    class func reduceRight<T>(list: [T], iterator: Int, line: String) -> [T]{
    //        if (iterator != nil) {
    //            println(String)
    //        }
    //        else {
    //            println(String)
    //        }
    //        return list //return list for chaining
    //    }
    
    class func find <T>(list: [T], predicate: (T) -> Bool) -> T?{
        if list.isEmpty { return nil }
        for eachItem in list {
            if predicate(eachItem) {
                //                answer.append(eachItem)
                return eachItem
            }
        }
        return nil
    }
    
    //    class func filter <T>(list: [T], iterator: Int, line: String) -> [T]{
    //        if (iterator != nil) {
    //            println(String)
    //        }
    //        else {
    //            println(String)
    //        }
    //        return list //return list for chaining
    //    }
    
    //where is a reserved word in swift
    class func whereIs <T>(list: [T], predicate : (T) -> Bool) -> [T]{
        if list.isEmpty { return [] }
        var answer: [T] = []
        for eachItem in list {
            if predicate(eachItem) {
                answer.append(eachItem)
            }
        }
        return answer
    }
    
    // need to properly spec this function
    class func findWhere <T>(list: [T], predicate : (T) -> Bool) -> [T]{
        if list.isEmpty { return [] }
        for eachItem in list {
            if predicate(eachItem) {
                
            }
        }
        return list
    }
    
    class func reject <T>(list: [T], predicate : (T) -> Bool) -> [T]{
        if list.isEmpty { return [] }
        var answer: [T] = []
        for eachItem in list {
            if !predicate(eachItem) {
                answer.append(eachItem)
            }
        }
        return answer
    }
    
    class func every <T>(list: [T], predicate : (T) -> Bool) -> Bool{
        if list.isEmpty { return true }
        for eachItem in list {
            if !predicate(eachItem) {
                return false
            }
        }
        return true
    }
    
    class func some <T>(list: [T], predicate : (T) -> Bool) -> Bool{
        if list.isEmpty { return false }
        for eachItem in list {
            if predicate(eachItem) {
                return true
            }
        }
        return false
    }
    
    class func contains <T: Equatable>(list: [T], value: T) -> Bool {
        for item in list {
            if item == value {
                return true
            }
        }
        
        return false
    }
    
    //    class func invoke <T>(list: [T], iterator: Int, line: String) -> [T]{
    //        if (iterator != nil) {
    //            println(String)
    //        }
    //        else {
    //            println(String)
    //        }
    //        return list //return list for chaining
    //    }
    //
    //    class func pluck <T>(list: [T], iterator: Int, line: String) -> [T]{
    //        if (iterator != nil) {
    //            println(String)
    //        }
    //        else {
    //            println(String)
    //        }
    //        return list //return list for chaining
    //    }
    
    class func max <T: Comparable>(list: [T]) -> T?{
        if list.isEmpty { return nil }
        var answer: T = list[0]
        for eachItem in list {
            if eachItem > answer {
                answer = eachItem
            }
        }
        return answer
    }
    
    class func min <T: Comparable>(list: [T]) -> T?{
        if list.isEmpty { return nil }
        var answer: T = list[0]
        for eachItem in list {
            if eachItem < answer {
                answer = eachItem
            }
        }
        return answer 
    }

//    problem with iOS 8 beta 3 array.sort()
//    class func sortBy <T,U: Comparable>(list: [T], iter: (T) -> U ) -> [T]{
//        list.sort({ (first: T, second: T) -> Bool in
//            return iter(first) < iter(second)
//        })
//        
//        return list
//    }
    
//    problem with iOS 8 beta 3 Array.unshare()
//    class func groupBy <T, U: Hashable>(list: [T], iter: (T) -> U) -> Dictionary<U, [T]> {
//        var result = Dictionary<U,[T]>()
//        
//        for item in list {
//            var hashValue = iter(item)
//            var array: [T]? = result[hashValue]
//            if array! != nil {
//                var newArray: [T] = array!
//                newArray.unshare()
//                newArray += item
//                result[hashValue] = newArray
//            } else {
//                var newArray = [item]
//                result[hashValue] = newArray
//            }
//        }
//        
//        return result
//    }
    
    class func indexBy <T, U: Hashable>(list: [T], iter: (T) -> U) -> Dictionary<U, T>{
        var result = Dictionary<U,T>()
        
        for item in list {
            var hashValue = iter(item)
            result[hashValue] = item
        }
        
        return result
    }
    
    class func countBy <T, U: Hashable>(list: [T], iter: (T)->U) -> Dictionary<U,Int>{
        var result = Dictionary<U,Int>()
        
        for item in list {
            var hashValue = iter(item)
            var value = result[hashValue]
            
            if value == nil {
                result[hashValue] = 1
            } else {
                result[hashValue] = value!+1
            }
        }
        
        return result
    }
    
//    class func shuffle <T>(list: [T]) -> [T]{
//        var max = UInt32(list.count)
//        for var i = 0; i < list.count; i++ {
//            let randomNumber = Int(arc4random_uniform(max))
//            (list[i], list[randomNumber]) = (list[randomNumber], list[i])
//        }
//        
//        return list
//    }
    
    //    problem with iOS 8 beta 3 Array.copy()

//    class func sample <T>(list: [T], qty: Int = 1) -> [T]{
//        var result = list.copy()
//        var max = list.count
//        
//        for var numRemoved = 0; numRemoved < list.count-qty; numRemoved++ {
//            let randomNumber = Int(arc4random_uniform(UInt32(result.count)))
//            result.removeAtIndex(randomNumber)
//        }
//        return result
//    }
}
//
//  ColorKit.swift
//  swiftknife
//
//  Created by Bryan Lim on 6/23/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func rgb(rgbValue:NSInteger) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: 1.0)
    }
    
    class func rgba(rgbValue:NSInteger, alpha:CGFloat) -> UIColor{
        return UIColor(red: (CGFloat)((rgbValue & 0xFF0000) >> 16)/255.0,
            green: (CGFloat)((rgbValue & 0xFF00) >> 8)/255.0,
            blue: (CGFloat)((rgbValue & 0xFF))/255.0,
            alpha: ((alpha)/255.0))
    }

    
    class func flatRedColor() -> UIColor {
        return rgb(0xE74C3C)
    }
    
    class func flatDarkRedColor() -> UIColor {
        return rgb(0xC0392B)
    }
    
    class func flatGreenColor() -> UIColor {
        return rgb(0x2ECC71)
    }
    
    class func flatDarkGreenColor() -> UIColor {
        return rgb(0x27AE60)
    }
    
    class func flatBlueColor() -> UIColor {
        return rgb(0x3498DB)
    }
    
    class func flatDarkBlueColor() -> UIColor {
        return rgb(0x2980B9)
    }
    
    class func flatTealColor() -> UIColor {
        return rgb(0x1ABC9C)
    }
    
    class func flatDarkTealColor() -> UIColor {
        return rgb(0x16A085)
    }
    
    class func flatPurpleColor() -> UIColor {
        return rgb(0x9B59B6)
    }
    
    class func flatDarkPurpleColor() -> UIColor {
        return rgb(0x8E44AD)
    }
    
    
    class func flatYellowColor() -> UIColor {
        return rgb(0xF1C40F)
    }
    
    class func flatDarkYellowColor() -> UIColor {
        return rgb(0xF39C12)
    }
    
    class func flatOrangeColor() -> UIColor {
        return rgb(0xE67E22)
    }
    
    class func flatDarkOrangeColor() -> UIColor {
        return rgb(0xD35400)
    }
    
    class func flatGrayColor() -> UIColor {
        return rgb(0x95A5A6)
    }
    
    class func flatDarkGrayColor() -> UIColor {
        return rgb(0x7F8C8D)
    }
    
    class func flatWhiteColor() -> UIColor {
        return rgb(0xECF0F1)
    }
    
    class func flatDarkWhiteColor() -> UIColor {
        return rgb(0xBDC3C7)
    }
    
    class func flatBlackColor() -> UIColor {
        return rgb(0x34495E)
    }
    
    class func flatDarkBlackColor() -> UIColor {
        return rgb(0x2C3E50)
    }
    
}


//
//  $Date.swift
//  swiftknife
//
//  Created by Poh Chiat on 16/6/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation


extension Int{
    var minute:NSDateComponents {
    get {
        let minuteComponent = NSDateComponents()
        minuteComponent.minute = self
        return minuteComponent
    }
    }
    var day:NSDateComponents {
    get{
        let dayComponent = NSDateComponents()
        dayComponent.day = self
        return dayComponent
    }
    }
    
    var week:NSDateComponents {
    get {
        let weekComponent = NSDateComponents()
        weekComponent.day = 7*self
        return weekComponent
    }
    }
    
    var month:NSDateComponents {
    get {
        let monthComponent = NSDateComponents()
        monthComponent.month = self
        return monthComponent
    }
    }
    
    var year:NSDateComponents {
    get {
        let yearComponent = NSDateComponents()
        yearComponent.year = self
        return yearComponent
    }
    }
}


// by default we use current calendar of the system
// this should suffice for many use cases
// we do not support a different calendar type atm
 func + (left: NSDate, right: NSDateComponents) -> NSDate? {
    let gregorian = NSCalendar.currentCalendar()
    return gregorian.dateByAddingComponents(right, toDate: left, options: nil)
}

//added UInt8() on both sides to fix the int cannot be converted to UInt8 Compiler error. 
 func - (left: NSDate, right: NSDateComponents) -> NSDate? {
    let gregorian = NSCalendar.currentCalendar()
    if UInt8(right.second) != UInt8(NSUndefinedDateComponent) {
        right.second = -right.second
    }
    if UInt8(right.minute) != UInt8(NSUndefinedDateComponent) {
        right.minute = -right.minute
    }
    if UInt8(right.hour) != UInt8(NSUndefinedDateComponent) {
        right.hour = -right.hour
    }
    if UInt8(right.day) != UInt8(NSUndefinedDateComponent) {
        right.day = -right.day
    }
    if UInt8(right.month) != UInt8(NSUndefinedDateComponent) {
        right.month = -right.month
    }
    if UInt8(right.year) != UInt8(NSUndefinedDateComponent) {
        right.year = -right.year
    }
    return gregorian.dateByAddingComponents(right, toDate: left, options: nil)
}

func < ( left: NSDate, right: NSDate ) -> Bool {
    let comparisonResult = left.compare(right)
    if comparisonResult == NSComparisonResult.OrderedAscending {
        return true
    } else {
        return false
    }
}

 func <= (left: NSDate, right: NSDate ) -> Bool {
    let comparisonResult = left.compare(right)
    if comparisonResult == NSComparisonResult.OrderedAscending || comparisonResult == NSComparisonResult.OrderedSame {
        return true
    } else {
        return false
    }
}
func  > (left: NSDate, right: NSDate) -> Bool{
    let comparisonResult = left.compare(right)
    if comparisonResult == NSComparisonResult.OrderedDescending {
        return true
    } else {
        return false
    }
}
func >= (left: NSDate, right: NSDate) -> Bool{
    let comparisonResult = left.compare(right)
    if comparisonResult == NSComparisonResult.OrderedDescending || comparisonResult == NSComparisonResult.OrderedSame {
        return true
    } else {
        return false
    }
}
func == (left: NSDate, right: NSDate ) -> Bool {
    let comparisonResult = left.compare(right)
    if comparisonResult == NSComparisonResult.OrderedSame {
        return true
    } else {
        return false
    }
}

//
//  DAWebView.swift
//  swiftknife
//
//  Created by Bryan Lim on 10/8/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class DAWebView: WKWebView {
    //https://github.com/marcuswestin/WebViewJavascriptBridge
}
//
//  Image.swift
//  swiftknife
//
//  Created by Poh Chiat on 2/7/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

/*
TODO:
Keep a instance of NSURLSession, investigate caching.
Animation support can be improved. Currently we have good defaults,
but more can be done for advanced animation, or customizing.
Support customized progress bar
*/

extension UIImageView {
    // url takes in an optional animation parameter
    // url method must be the last method when chaining
    // since it does not return a UIImageView
    func url (urlString: String, animation: CABasicAnimation? = nil){
        let url = NSURL(string: urlString)
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        session.dataTaskWithURL(url, completionHandler: {
            (response: NSData!, data: NSURLResponse!, error: NSError!) in
            
            // setup animation
            if animation? == nil || animation!.fromValue == nil {
                let crossFade = CABasicAnimation(keyPath: "contents")
                crossFade.duration = 0.5
                if self.image == nil {
                    if self.backgroundColor == nil {
                        self.image = self.imageWithColor(UIColor.whiteColor())
                        crossFade.fromValue = self.image.CGImage
                    } else {
                        self.image = self.imageWithColor(self.backgroundColor)
                        crossFade.fromValue = self.image.CGImage
                    }
                } else {
                    crossFade.fromValue = self.image.CGImage!
                }
                crossFade.toValue = UIImage(data: response).CGImage
                self.layer.addAnimation(crossFade, forKey: "")
                
            } else {
                // expect a from value
                animation!.toValue = UIImage(data: response).CGImage
                self.layer.addAnimation(animation, forKey: "")
            }
            
            self.image = UIImage(data: response)
            
            // handle progress bar
            for view in self.subviews {
                if view.isKindOfClass(UIActivityIndicatorView) {
                    view.removeFromSuperview()
                }
            }
            }).resume()
    }
    
    // converts UIColor to UIImage 
    // helper method for URL
    func imageWithColor (color: UIColor) -> UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    // set UIImageView to a placeholder, defaulting to placeholder.jpeg
    func placeholder (imageStr: String = "placeholder.jpeg") -> UIImageView {
        self.image = UIImage(named: imageStr)
        return self
    }
    
    // sets a default iOS style activity indicator
    func progressBar () -> UIImageView {
        let spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        spinner.center = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
        spinner.frameForAlignmentRect(CGRect(x: 0,y: 0, width: 24,height: 24))
        spinner.startAnimating()
        addSubview(spinner)
        return self
    }
    
    // sets the content mode
    // convenience method for chaining
    func contentMode (contentMode: UIViewContentMode) -> UIImageView {
        self.contentMode = contentMode
        return self
    }
}
//
//  $Network.swift
//  swiftknife
//
//  Created by Bryan Lim on 6/19/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import Foundation


extension S {
    
    class func get(url_string: String) {
        var url = NSURL(string: url_string)
        var url_request = NSMutableURLRequest(URL: url)
        url_request.HTTPMethod = "GET"
        NSURLConnection.sendAsynchronousRequest(url_request, queue: NSOperationQueue.mainQueue()){(response, response_data, error) in
            println(NSString(data: response_data, encoding: NSUTF8StringEncoding))
        }
    }
    
    class func post(url_string: String, value: Dictionary<String,String>) {
        var error: NSError?
        var url = NSURL(string: url_string)
        var url_request = NSMutableURLRequest(URL: url)
        
        var json = NSJSONSerialization.dataWithJSONObject(value, options: NSJSONWritingOptions(0), error: &error)
        url_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        url_request.HTTPBody = json
        url_request.HTTPMethod = "POST"
        
        NSURLConnection.sendAsynchronousRequest(url_request, queue: NSOperationQueue.mainQueue()){(response, response_data, error) in
            println(NSString(data: response_data, encoding: NSUTF8StringEncoding))
        }
    }
    
    class func put(url_string: String, value: Dictionary<String,String>) {
        var error: NSError?
        var url = NSURL(string: url_string)
        var url_request = NSMutableURLRequest(URL: url)
        var json = NSJSONSerialization.dataWithJSONObject(value, options: NSJSONWritingOptions(0), error: &error)
        url_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        url_request.HTTPBody = json
        url_request.HTTPMethod = "PUT"
        
        NSURLConnection.sendAsynchronousRequest(url_request, queue: NSOperationQueue.mainQueue()){(response, response_data, error) in
            println(NSString(data: response_data, encoding: NSUTF8StringEncoding))
        }
    }
    
    class func delete(url_string: String, value: Dictionary<String,String>) {
        var error: NSError?
        var url = NSURL(string: url_string)
        var url_request = NSMutableURLRequest(URL: url)
        var json = NSJSONSerialization.dataWithJSONObject(value, options: NSJSONWritingOptions(0), error: &error)
        url_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        url_request.HTTPBody = json
        url_request.HTTPMethod = "DELETE"
        
        NSURLConnection.sendAsynchronousRequest(url_request, queue: NSOperationQueue.mainQueue()){(response, response_data, error) in
            println(NSString(data: response_data, encoding: NSUTF8StringEncoding))
        }
    }
    
    class func patch(url_string: String, value: Dictionary<String,String>) {
        var error: NSError?
        var url = NSURL(string: url_string)
        var url_request = NSMutableURLRequest(URL: url)
        var json = NSJSONSerialization.dataWithJSONObject(value, options: NSJSONWritingOptions(0), error: &error)
        url_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        url_request.HTTPBody = json
        url_request.HTTPMethod = "PATCH"
        
        NSURLConnection.sendAsynchronousRequest(url_request, queue: NSOperationQueue.mainQueue()){(response, response_data, error) in
            println(NSString(data: response_data, encoding: NSUTF8StringEncoding))
        }
    }
}

//
//  File.swift
//  swiftknife
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
    
    func substring(value:Int) -> String {
        return self.substringFromIndex(value)
    }
    
    func print() {
        for eachChar in self {
            println(eachChar)
        }
    }
    
    func indexOf(index:String) -> NSRange {
        return self.rangeOfString(index)
    }
    
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
//  StringTests.swift
//  swiftknife
//
//  Created by Bryan Lim on 6/20/14.
//  Copyright (c) 2014 TADA. All rights reserved.
//

import XCTest
import swiftknife

class StringTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testArray() {
        var test = "hello"
        XCTAssert(test.array == ["h", "e", "l", "l","o"])
    }
    
    func testLength() {
        var result0 = "hello"
        XCTAssert(result0.length == 5)
    }
    
    func testSize() {
        var test = "hello"
        XCTAssert(test.size == 5)
    }
    
    func testUpper() {
        var test = "hello"
        XCTAssert(test.upper() == "HELLO")
    }
    
    func testLower() {
        var test = "HELLO"
        XCTAssert(test.upper() == "hello")
    }
    
    func testToArray() {
        var test = "hello"
        XCTAssert(test.toArray() == ["h", "e", "l", "l","o"])
    }
    
//    func testIndexOf() {
//        var test = "hello"
//        XCTAssert(test.indexOf("h") == 0)
//    }
    
    func testFirst() {
        var test = "hello"
        XCTAssert(test.first() == "h")
    }
    
    func testLast() {
        var test = "hello"
        XCTAssert(test.last() == "o")
    }
    
    func testSubscript(){
        var test = "hello"
        XCTAssert(test[0] == "h")
        XCTAssert(test[1] == "e")
        XCTAssert(test[2] == "l")
        XCTAssert(test[3] == "l")
        XCTAssert(test[4] == "o")
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
