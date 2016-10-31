//: Playground - noun: a place where people can play

import UIKit

let point = (3,3)
switch point{
case let (x,y) where x == y:
    print("It's on the line x == y!")
case let (x,y) where x == -y:
    print("It's on the line x == -y!")
case let (x,y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y) )")
}
