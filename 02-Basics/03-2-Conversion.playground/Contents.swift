//: Playground - noun: a place where people can play

import UIKit

let x: UInt16 = 100
let y: UInt8  = 20
// 两个变量，即使都是整型，不同类型也不能进行运算
//x + y

let imUInt16 = x + UInt16(y)
let imUInt8 = UInt8(x) + y

let a:Double = 3.0
let b:Float = 0.3

Float(a) + b
a + Double(b)


// 3可以理解成一个浮点数
let w:Float = 3
// 3.0不可以理解成一个整数
//let v:Int   = 3.0


// 整数和小数之间也不可以自动类型转换
let integer = 3
let fraction = 0.1415926
let pi = Double(integer) + fraction


// CGFloat
var red: CGFloat   = 0.1
var green: CGFloat = 0.5
var blue: CGFloat =  0.3
UIColor(red: red, green: green, blue: blue, alpha: 1.0)
