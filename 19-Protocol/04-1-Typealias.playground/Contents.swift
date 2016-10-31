//: Playground - noun: a place where people can play

import UIKit

typealias Length = Double

extension Double{
    
    var km: Length{ return self * 1000.0 }
    var m: Length{ return self }
    var cm: Length{ return self / 100 }
    var ft: Length{ return self / 3.28084 }
}

let runningDistance: Length = 3.54.km
runningDistance


typealias AudioSample = UInt64


