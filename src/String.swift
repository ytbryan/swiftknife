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
