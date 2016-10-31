//: Playground - noun: a place where people can play

import UIKit

struct Point{
    var x = 0
    var y = 0
}

var p1 = Point()
var p2 = p1

p2.x += 1

print(p2)
print(p1)
