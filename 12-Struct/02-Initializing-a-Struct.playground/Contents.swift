//: Playground - noun: a place where people can play

import UIKit


struct Location{
    
    let latitude: Double
    let longitude: Double
    
    // 如果不声明自定义的构造函数，结构体会创建一个包含所有参数的默认构造函数

    // 构造函数
    init(coordinateString: String){
        
        let commaIndex = coordinateString.rangeOfString(",")!.startIndex
        let firstElement = coordinateString.substringToIndex(commaIndex)
        let secondElement = coordinateString.substringFromIndex(commaIndex.successor())
        
        // 即使是let的量，若没有初始值，在初始化的过程中仍然可以复制
        // 但如果初始化了一次以后，就不能再被赋值了
        //latitude = 0
        //longitude = 0
        
        latitude = Double(firstElement)!
        longitude = Double(secondElement)!
        
        // 也可以使用self表明是自己
        //self.latitude = Double(firstElement)!
        //self.longitude = Double(secondElement)!
    }
    
    // 写了任何一个自定义的构造函数，默认构造函数即失效
    init(latitude: Double, longitude: Double){
        
        // 使用self，表明是自己
        self.latitude = latitude
        self.longitude = longitude
    }
    
    // 可以写任意多的构造函数
    //init(placeName: String){
    //
    //}
    
    // 没有参数的构造函数
    init(){
        latitude = 0.0
        longitude = 0.0
    }
    // 也可以为属性设置初值
    // 但设置成初始属性，相应的属性应该是var
    // 如果所有的属性都有初值，则自动包含了无属性构造函数
    
    
    // 构造函数的规则
    // 必须为所有的成员变量赋值
    // 其他语言可能有默认值的概念，如对于整型是0；对于布尔值是false
    // 但是swift语言没有默认值！ - swift语言安全性的又一体现
    // 只有一个例外——可选型
    
    var placeName: String?
    // 注意可选型应该是var
    // 如果可选型是let，则必须有初值。
    let planet: String? = "The Earth"
    
    // 建议有一个包含所有属性的构造函数
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
}


let location = Location(coordinateString: "37.3230,-122.0322")

let location2 = Location(latitude: 37.3230, longitude: -122.0322)

let nowhere = Location()

let location3 = Location(latitude: 37.3230, longitude: -122.0322, placeName:"Apple Head Quarter")
print(location3.latitude)
print(location3.longitude)
print(location3.placeName)
print(location3.planet)


// 回忆一下，我们之前使用过很多次构造函数：）
let a = Set<Int>()
let b = Int()
let c = Int(1.2)
let d = [Int](count:3, repeatedValue:0)

