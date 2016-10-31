//: Playground - noun: a place where people can play

import UIKit

let score = 90
switch score{
case 0:
    print("You got an egg!")
case 1..<60:
    print("You failed.")
case 60:
    print("Just passed")
case 61..<80:
    print("Just so-so")
case 80..<90:
    print("Good")
case 90..<100:
    print("Great!")
case 100:
    print("Perfect!")
default:
    print("Error score.")
}
