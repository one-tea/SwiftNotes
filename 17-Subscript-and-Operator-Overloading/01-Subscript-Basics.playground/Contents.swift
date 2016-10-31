//: Playground - noun: a place where people can play

import UIKit

var arr = [0,1,2,3]
arr[1]

var dict = ["北京":"Beijing", "纽约":"New York", "巴黎":"Paris"]
dict["北京"]


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

var v = Vector3(x: 1.0, y: 2.0, z: 3.0)
v.x
v[0]
v[100]

v["z"]
v["Y"]
v["Hello"]

v[0] = 100.0
v
