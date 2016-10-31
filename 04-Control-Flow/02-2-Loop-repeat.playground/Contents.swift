//: Playground - noun: a place where people can play

import UIKit

var aWin = false
var bWin = false
repeat{
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    print("a is \(a) , b is \(b). ",terminator:"")
    
    if a > b{
        aWin = true
    }
    else if a < b{
        bWin = true
    }
    else{
        print("draw",terminator:"")
    }
    print("")
}while !aWin && !bWin

//print(game)
let winner = aWin ? "A" : "B"
print("\( winner ) win!")
