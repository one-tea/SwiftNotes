//: Playground - noun: a place where people can play

import UIKit

func swapTwoInt(inout a: Int , inout _ b: Int){
    (a,b) = (b,a)
}

var a: Int = 0
var b: Int = 6
swapTwoInt(&a, &b)
a
b

func swapTwoDouble(inout a: Double , inout _ b: Double){
    (a,b) = (b,a)
}


// 使用generic
// generic function
func swapTwoThings<T>(inout a: T , inout _ b: T){
    (a,b) = (b,a)
}

var hello = "Hello"
var bye = "Bye"
swapTwoThings(&hello, &bye)
hello
bye

swapTwoThings(&a, &b)
a
b

swap(&a, &b)


