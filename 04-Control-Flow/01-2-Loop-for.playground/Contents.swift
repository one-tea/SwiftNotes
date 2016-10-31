//: Playground - noun: a place where people can play

import UIKit

// for-in
for i in -99...99{
    i*i
}

// for
// 如下C风格的for循环，将在Swift3中被移除。现在，大家使用这种风格的循环会看到一个警告。请大家拥抱for-in循环吧！
for var i = -99 ; i <= 99 ; i += 1 {
    i*i
}

// 将循环初始条件放在外面
var index = -99
for ; index <= 99 ; index += 1 {
    index*index
}

// 循环变量的更改可以自定义
for var a = -6.28 ; a <= 6.28 ; a += 0.1{
    sin(a)
}

index = -99
var step = 1
for ; index <= 99 ; index += step {
    index*index
    step *= 2
}
