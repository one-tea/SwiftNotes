//: Playground - noun: a place where people can play

import UIKit


// 数组、字典、集合的参数都是按值传递的，因此必须使用inout类型的参数才可以在函数中改变
func initArray( inout arr: [Int] , by value: Int ){
    
    for i in 0..<arr.count{
        arr[i] = value
    }
}

var arr = [1,2,3,4,5]
initArray(&arr, by: 0)
arr


