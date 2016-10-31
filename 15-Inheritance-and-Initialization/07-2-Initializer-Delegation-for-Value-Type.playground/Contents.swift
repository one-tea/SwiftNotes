//: Playground - noun: a place where people can play

import UIKit

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}

struct Rectangle{
    
    var origin = Point()
    var size = Size()
    
    var center: Point{
        
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
    
    init( origin: Point , size: Size ){
        self.origin = origin
        self.size   = size
    }
    
    init( center: Point , size: Size ){
        
        let originX = center.x - size.width/2 
        let originY = center.y - size.height/2
        self.init( origin: Point( x:originX , y:originY ) , size: size)
    }
    
    var area: Double{
        return size.width * size.height
    }
}
