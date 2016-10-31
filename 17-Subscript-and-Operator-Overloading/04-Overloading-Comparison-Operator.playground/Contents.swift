//: Playground - noun: a place where people can play

import UIKit

struct Vector3{
    
    var x:Double = 0.0
    var y:Double = 0.0
    var z:Double = 0.0
    
    subscript(index:Int) -> Double?{
        
        get{
            switch index{
            case 0: return x
            case 1: return y
            case 2: return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch index{
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: return
            }
        }
    }
    
    subscript(axis:String) -> Double?{
        
        get{
            switch axis{
            case "x","X": return x
            case "y","Y": return y
            case "z","Z": return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch axis{
            case "x","X": x = newValue
            case "y","Y": y = newValue
            case "z","Z": z = newValue
            default: return
            }
        }
    }
}


let va = Vector3(x: 1.0, y: 2.0, z: 3.0)
let vb = Vector3(x: 3.0, y: 4.0, z: 5.0)


// 重载比较运算符

// 自定义类型初始不能作比较
// va == vb

// 对于struct，===也不能使用
//va === vb

func ==(left: Vector3, right: Vector3) -> Bool{
    return left.x == right.x && left.y == right.y && left.z == right.z
}

va == vb

func !=(left: Vector3, right: Vector3) -> Bool{
    //return left.x != right.x || left.y != right.y || left.z != right.z
    return !(left == right)
}

va != vb


func <(left: Vector3, right: Vector3) -> Bool{
    if left.x != right.x{ return left.x < right.x }
    if left.y != right.y{ return left.y < right.y }
    if left.z != right.z{ return left.z < right.z }
    return false
}

func <=(left: Vector3, right: Vector3) -> Bool{
    return left < right || left == right
}

func >(left: Vector3, right: Vector3) -> Bool{
    return !(left <= right)
}

func >=(left: Vector3, right: Vector3) -> Bool{
    return !(left < right)
}


let a = [2,3,1,5]
a.sort(>)
