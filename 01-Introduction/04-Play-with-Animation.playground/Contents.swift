import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))

let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (253.0/255.0), green: (159.0/255.0), blue: (47.0/255.0), alpha: 1.0)
circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0

rectangle.backgroundColor = UIColor.whiteColor()

containerView.addSubview(rectangle)

UIView.animateWithDuration(2.0, animations: { () -> Void in
    let endingColor = UIColor(red: (255.0/255.0), green: (61.0/255.0), blue: (24.0/255.0), alpha: 1.0)
    circle.backgroundColor = endingColor
    
    let scaleTransform = CGAffineTransformMakeScale(5.0, 5.0)
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransformMakeRotation(3.14)
    rectangle.transform = rotationTransform
})

XCPlaygroundPage.currentPage.liveView = containerView