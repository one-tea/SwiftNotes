//: Playground - noun: a place where people can play

import UIKit


// Int()
var ageInput: String = "16"

let age = Int(ageInput)

if let age = Int(ageInput) where age < 20{
        
    print("You're a teenager!")
}


// Optional in String method
var greetings = "Hello"
greetings.rangeOfString("ll")
greetings.rangeOfString("mm")

