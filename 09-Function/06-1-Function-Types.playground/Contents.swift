//: Playground - noun: a place where people can play

import UIKit

// 函数类型
func add( a:Int , _ b:Int ) -> Int{
    return a + b
}

let anotherAdd = add
anotherAdd( 3 , 4 )

// let anotherAdd: (Int,Int)->Int = add


// 返回值为空的函数类型
func sayHelloTo(name:String){
    print("Hello, \(name)!")
}

let anotherSayHelloTo: (String) -> () = sayHelloTo
//let anotherSayHelloTo: (String) -> Void = sayHelloTo


// 参数和返回值均为空的函数类型
func sayHello(){
    print("Hello")
}

let anotherSayHello1: ()->() = sayHello
let anotherSayHello2: ()->Void = sayHello
let anotherSayHello3: Void->() = sayHello
let anotherSayHello4: Void->Void = sayHello