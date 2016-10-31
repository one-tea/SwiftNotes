//: Playground - noun: a place where people can play

import UIKit

// Array, Dictionary, Set 都是结构体!
var arr = [1,2,3]
arr.count
arr.append(4)

var arr2 = arr
arr2.insert(0, atIndex: 0)

arr
arr2


// Int, Float, Double, Bool, String 都是结构体!
// 特别注意：String是结构体！
var a:Int = 1
a.distanceTo(100)
Int.max


// Int.这种方法怎么建立？以后介绍
// arr.append(4) 或者 arr2.insert(0, atIndex: 0) 这种改变自身的方法怎么声明？以后介绍

