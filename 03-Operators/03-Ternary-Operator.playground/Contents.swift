//: Playground - noun: a place where people can play

import UIKit

var battery = 21
let batteryColor:UIColor
if battery <= 20{
    batteryColor = UIColor.redColor()
}
else{
    batteryColor = UIColor.greenColor()
}
batteryColor


let batteryColor2 = battery <= 20 ? UIColor.redColor() : UIColor.greenColor()

