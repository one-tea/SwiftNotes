//: Playground - noun: a place where people can play

import UIKit

let vector = (1,1)
switch vector{
case (0,0):
    print("It's origin!")
case (1,0):
    print("It an unit vector on the positive x-axis.")
case (-1,0):
    print("It an unit vector on the negative x-axis.")
case (0,1):
    print("It an unit vector on the positive y-axis.")
case (0,-1):
    print("It an unit vector on the negative y-axis.")
default:
    print("It's just an ordinary vector.")
}
