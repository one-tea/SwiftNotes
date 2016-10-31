//: Playground - noun: a place where people can play

import UIKit

// didSet , willSet
class LightBulb{
    
    static let maxCurrent = 30
    var current = 0 {
        
        // 可以不声明新的变量名，使用newValue
        willSet(newCurrent){
            // 此时，current还是以前的值
            print("Current value changed. The change is \(abs(current-newCurrent))")
        }
        
        // property observer可以用来限制值或者格式
        // 也可以用来做关联逻辑
        // 可以不声明新的变量名，使用oldValue获取原来的值
        didSet(oldCurrent){
            // 此时，current已经是新的值
            if current == LightBulb.maxCurrent{
                print("Pay attention, the current value get to the maximum point.")
            }
            else if current > LightBulb.maxCurrent{
                print("Current too high, falling back to previous setting.")
                current = oldCurrent
            }
            
            print("The current is \(current)")
        }
    }
}

let bulb = LightBulb()
bulb.current = 20
bulb.current = 30
bulb.current = 40



