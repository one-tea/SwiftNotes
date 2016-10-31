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

class Rectangle{
    
    var origin = Point()
    var size = Size()
    
    init( origin: Point , size: Size ){
        self.origin = origin
        self.size   = size
    }
}


// extension 中放入新的方法
extension Rectangle{
    
    // 如果是struct，就需要使用mutating关键字
    func translate(x x: Double, y: Double){
        
        self.origin.x += x
        self.origin.y += y
    }
}


let rect = Rectangle(origin: Point(), size: Size(width: 4, height: 3))
rect.translate(x: 10, y: 10)
rect


// extension 中放入新的属性
extension Rectangle{
    
    // extension中只能放入计算型属性
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
    
    var area: Double{
        return size.width * size.height
    }
    
    var perimeter: Double{
        return 2*(size.width + size.height)
    }
    
    
    // 可以在extension中根据计算性属性放入新的构造函数
    // extension中只能放入convenience的构造函数
    convenience init(center: Point, size: Size){
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        //self.origin = Point(x: originX, y: originY)
        //self.size = size
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}


rect.area
rect.perimeter
rect

let rect2 = Rectangle(center: Point(), size: Size(width: 6, height: 8))
rect2


