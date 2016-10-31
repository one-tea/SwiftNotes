//: Playground - noun: a place where people can play

import UIKit

enum Direction{
    case North
    case South
    case East
    case West
}

var d1 = Direction.North
var d2 = d1

d2 = Direction.South

d2
d1


enum Shape{
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
}

var square1 = Shape.Square(side: 2.0)
var square2 = square1

square2 = Shape.Square(side: 5.0)
square2
square1

