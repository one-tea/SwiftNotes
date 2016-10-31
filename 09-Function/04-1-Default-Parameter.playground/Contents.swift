//: Playground - noun: a place where people can play

import UIKit


// 有一个默认参数
//func sayHelloTo( name: String , withGreetingWord greeting: String = "Hello" ) -> String{
//    
//    return "\(greeting), \(name)!"
//}
//
//sayHelloTo("Playground", withGreetingWord: "Hi")
//sayHelloTo("Playground")


// 有多个默认参数
func sayHelloTo( name: String , withGreetingWord greeting: String = "Hello" , punctuation: String = "!") -> String{
    
    return "\(greeting), \(name)\(punctuation)"
}

sayHelloTo("Playground", withGreetingWord: "Hi", punctuation: "!!!")

// 默认参数顺序变更是可以的，但最好和声明序一样
sayHelloTo("Playground", punctuation: "!!!", withGreetingWord: "Hi")


// 最好将默认参数放在最后, 但不是必须


// 第一个参数含有默认参数值
func sayHello( to name: String = "Playground" , withGreetingWord greeting: String = "Hello" , punctuation: String = "!") -> String{
    
    return "\(greeting), \(name)\(punctuation)"
}

sayHello()
sayHello(punctuation: "!!!", withGreetingWord: "Bye", to: "OC")


// print是一个非常好的有两个默认参数的函数
print("Hello", 1, 2, 3, separator:",", terminator:".")
