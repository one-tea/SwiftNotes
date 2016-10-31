//: Playground - noun: a place where people can play

import UIKit

// 声明字典
var dict = ["swift":"雨燕；快速", "python":"大蟒", "java":"爪洼岛（位于印尼）", "groovy":"绝妙的，时髦的"]

//var dict: [String:String]
//var dict: Dictionary<String, String>


// 创建空字典
var emptyDictionary1:[String:Int] = [:]
var emptyDictionary2:Dictionary<Int,String> = [:]
var emptyDictionary3 = [String:String]()
var emptyDictionary4 = Dictionary<Int,Int>()


// 获取字典数据
dict["swift"]
dict["C++"]

if let value = dict["swift"]{
    print("swift 的意思是 - \(value)")
}


// 字典数据数量
dict.count


// 判断字典是否为空
dict.isEmpty
emptyDictionary1.isEmpty


// 获得字典的所有键或者所有值
Array(dict.keys)
Array(dict.values)


// 遍历
// 注意：字典是无序的！
for key in dict.keys{
    print(key)
}

for value in dict.values{
    print(value)
}

for (key,value) in dict{
    print("\(key) : \(value)")
}


// 比较
let dict1 = [1:"A", 2:"B", 3:"C"]
let dict2 = [1:"A", 3:"C", 2:"B"]
dict1 == dict2
