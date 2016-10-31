//: Playground - noun: a place where people can play

import UIKit

// 由于从Swift2.2开始，C风格的for循环，将在Swift3中被移除。如果要写一个改变步长的for循环，则需要使用定义在整型上的stride函数。

// Swift3实现一个递减循环
for i in 10.stride (through: 0, by: -1) {
    print("\(i)")
}

// Swift3实现一个从11开始步长为3，直至101的循环
for i in 11.stride (through: 101, by: 3) {
    print("\(i)")
}

// 注意，起始点（调用的整数）和终止点（through参数表达）都是包含在遍历过程中的。
