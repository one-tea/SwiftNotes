//: Playground - noun: a place where people can play

import UIKit


// 枚举递归，使用indirect关键字
enum ArithmeticExpression{
    
    case Number(Int)
    indirect case Addition( ArithmeticExpression , ArithmeticExpression )
    indirect case Multiplication( ArithmeticExpression , ArithmeticExpression )
}

// 也可以直接将indirect关键字放在整个enum前面
indirect enum ArithmeticExpression2{
    
    case Number(Int)
    case Addition( ArithmeticExpression , ArithmeticExpression )
    case Multiplication( ArithmeticExpression , ArithmeticExpression )
}


// (5 + 4) * 2
let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let two = ArithmeticExpression.Number(2)
let product = ArithmeticExpression.Multiplication(sum, two)


func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .Multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}


evaluate(product)
