//: Playground - noun: a place where people can play

import UIKit

// generic type
let arr = Array<Int>()
let dict = Dictionary<String,Int>()
let set  = Set<Float>()


struct Stack<T>{
    
    var items = [T]()
    
    func isEmpty() -> Bool{
        return items.count == 0
    }
    
    mutating func push(item: T){
        items.append(item)
    }
    
    mutating func pop() -> T?{
        
        guard !self.isEmpty() else{
            return nil
        }
        
        return items.removeLast()
    }
    
}

extension Stack{
    
    func top() -> T?{
        return items.last
    }
    
    func count() -> Int{
        return items.count
    }
}


var s = Stack<Int>()
s.push(1)
s.push(2)
s.pop()

var ss = Stack<String>()


struct Pair<T1,T2>{
    
    var a: T1
    var b: T2

}

var pair = Pair<Int,String>(a: 0 , b: "Hello")
pair

