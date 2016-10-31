//: Playground - noun: a place where people can play

import UIKit

// 参数前加入var关键字，使得参数可以在函数体内被改变
// 在函数的参数列表声明var类型将在Swift3中被弃用
func toBinary( var num: Int ) -> String{
    
    var res = ""
    repeat{
        res = String(num%2) + res
        num /= 2
    }while num != 0
    return res
}

toBinary(12)


// 在新的规范中，可以这样来让传入的函数为可变类型
func toBinaryForSwift3( num: Int ) -> String{
    
    // 让传入的参数num成为variable类型
    var num = num
    
    var res = ""
    repeat{
        res = String(num%2) + res
        num /= 2
    }while num != 0
    return res
}


// var参数不代表其改变可以延续到函数体外面
var x = 100
toBinary(x)
x
