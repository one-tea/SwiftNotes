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
    
    func length() -> Double{
        return sqrt( x*x + y*y + z*z )
    }
}

func + (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
}

func - (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
}

func * (left: Vector3, right: Vector3) -> Double{
    return left.x * right.x + left.y * right.y + left.z * right.z
}

func * (left: Vector3, a: Double) -> Vector3{
    return Vector3(x: left.x * a, y: left.y * a, z: left.z * a)
}

func += (inout left: Vector3, right: Vector3){
    left = left + right
}


// Custom operators can begin with one of the ASCII characters /, =, -, +, !, *, %, <, >, &, |, ^, or ~, or with one of the Unicode characters

// https://developer.apple.com/library/ios/documentation/Swift/Reference/Swift_StandardLibrary_Operators/index.html#//apple_ref/doc/uid/TP40016054


postfix operator +++ {}
postfix func +++ (inout vector: Vector3) -> Vector3{
    
    vector += Vector3(x: 1.0, y: 1.0, z: 1.0)
    return vector
}


prefix operator +++ {}
prefix func +++ (inout vector: Vector3) -> Vector3{
    
    let ret = vector
    vector += Vector3(x: 1.0, y: 1.0, z: 1.0)
    return ret
}


infix operator ^ {}
//infix operator ^ {associativity left precedence 140}
func ^ (left: Vector3, right: Vector3) -> Double{
    
    return acos( ( left * right ) / (left.length() * right.length()) )
}

let va = Vector3(x: 1.0, y: 2.0, z: 3.0)
let vb = Vector3(x: 4.0, y: 5.0, z: 6.0)
va ^ vb


// 关于precedence
// https://developer.apple.com/library/mac/documentation/Swift/Reference/Swift_StandardLibrary_Operators/index.html#//apple_ref/doc/uid/TP40016054


infix operator **{associativity right precedence 155}
func **(x: Double, p:Double) -> Double{
    return pow(x,p)
}

2**3
2**3**2
1+2**3**2
5*2**3**2
