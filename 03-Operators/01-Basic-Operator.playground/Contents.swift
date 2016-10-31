//: Playground - noun: a place where people can play

import UIKit

//赋值运算符
var a = 3
a = 2
// 赋值语句没有返回值
//if a = 1{
//    print("a = 1")
//}


//数学运算符
var x = 10
var y = 3
var z = 0

x + y
x - y
x * y
x / y
x % y

// 对于 / 和 %，除数不能为0
//x / z
//x % z

let u = 2.5
let v = 1.2
u%v
let w = 3.0
w%v

// 一元运算符
var xx = +x
var yy = -y


// += , %=
x += 2
x %= 2


// ++ 和 --
// 虽然在Swift2.2中，仍然可以使用 ++ 和 --， 但是编译器会提示Warning。
// 同时， ++和--操作将在Swift3中取消。
x++
++x

// 建议使用 += 1; -=1 来代替++和--
x += 1
x -= 1

