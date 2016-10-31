//: Playground - noun: a place where people can play

import UIKit

// 可变长参数
func mean( numbers: Double ... ) -> Double{

    var sum: Double = 0
    
    // 将变长参数当做一个数组看待
    for number in numbers{
        sum += number
    }
    return sum / Double(numbers.count)
}

mean(1,2)
mean(1.9,2.2,3.1)

// 变长参数只能有一个

// 变长参数不一定放在最后
func sayHelloTo( names: String ... , withGreetingWord greeting: String , punctuation: String){
    
    for name in names{
        print("\(greeting), \(name)\(punctuation)")
    }
}

sayHelloTo("A","B","C", withGreetingWord: "Hi", punctuation: "!!!")
