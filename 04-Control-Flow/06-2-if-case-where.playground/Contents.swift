//: Playground - noun: a place where people can play

import UIKit

let age = 19
switch age{
case 10...19:
    print("You're a teenager.")
default:
    print("You're not a teenager.")
}


if case 10...19 = age{
    print("You're a teenager.")
}

if case 10...19 = age where age >= 18{
    print("You're a teenager and in a college!")
}


let vector = (4,0)
if case ( let x , 0 ) = vector where x > 2 && x < 5{
    print("It's the vector!")
}
