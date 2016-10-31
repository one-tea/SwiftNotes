//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


let showView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = showView.center
rectangle.backgroundColor = UIColor.redColor()

showView.addSubview(rectangle)

UIView.animateWithDuration(2.0){
    rectangle.backgroundColor = UIColor.blueColor()
    rectangle.frame = showView.frame
}

XCPlaygroundPage.currentPage.liveView = showView
