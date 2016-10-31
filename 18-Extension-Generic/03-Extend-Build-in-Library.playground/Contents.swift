//: Playground - noun: a place where people can play

import UIKit


extension Int{
    
    var square: Int{
        return self*self
    }
    
    var cube: Int{
        return self*self*self
    }
    
    func inRange(closedLeft left: Int, openedRight: Int) -> Bool{
        return self >= left && self < openedRight
    }
    
    func repetitions(task: () -> Void ){
        for _ in 0..<self{
            task()
        }
    }
    
    func stride(to end: Int, by stride: Int, task: (Int) -> Void ){
        
        for i in self.stride(to: end, by: stride){
            task(i)
        }
    }
}

let num = 8
num.square

let str = "Hello, Swift"
let index = 21
index.inRange(closedLeft: 0, openedRight: str.characters.count)

10.repetitions{
    print("Hello, Swift")
}

for i in 2.stride(to: 10, by: 2){
    print(i)
}

for i in 2.stride(through: 10, by: 2){
    print(i)
}

2.stride(to: 10, by: 2){ num in
    print(num*num)
}


// Int还有很多可以做enxtension的地方
// 如 12345[2]
// 如 toBinary, toHex
// 如 isPrime


// extension在App开发中被经常使用
// 如 String, UIColor等基础类的使用


// 在App开发中, 一个界面可能需要处理多个事件: 表格显示, 用户输入, 导航, 动画, 数据存储...
// 此时可以使用extension分隔开
