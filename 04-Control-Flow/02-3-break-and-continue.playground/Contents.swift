//: Playground - noun: a place where people can play

import UIKit

var a: Int
var b: Int
while true{
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    
    if a == b{
        print("draw")
        continue
    }
    
    let winner = a > b ? "A" : "B"
    print("\( winner ) win!")
    break
}


