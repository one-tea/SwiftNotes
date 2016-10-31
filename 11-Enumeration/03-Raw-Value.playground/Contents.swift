//: Playground - noun: a place where people can play

import UIKit


// 定义raw value，完全定义
//enum Month: Int{
//    case January = 1
//    case February = 2
//    case March = 3
//    case April = 4
//    case May = 5
//    case June = 6
//    case July = 7
//    case August = 8
//    case September = 9
//    case October = 10
//    case November = 11
//    case December = 12
//}

enum Month: Int{
    case January = 1, Febuary = 2, March = 3, April = 4, May = 5, June = 6, July = 7, August = 8, September = 9, October = 10, November = 11, December = 12
}


// 使用raw value
func monthsBeforeNewYear( month: Month ) -> Int{
    
    return 12 - month.rawValue
}


// 使用raw value初始化枚举类型
let curMonth = Month(rawValue: 4)

if let theMonth = Month(rawValue: 8){
    print("\(monthsBeforeNewYear(theMonth)) months before New Year!")
}


// 若枚举类型的raw value值为顺序的，从第二个raw value值开始，可以省略
enum Month2: Int{
    case January = 1, Febuary, March, April, May, June, July, August, September, October, November, December
}


// raw value为整型的枚举类型，如果不显示给出整型值，则从0开始
enum Grade: Int{
    case F,E,D,C,B,A
}

let grade:Grade = .A
print("Your score is \(grade.rawValue)")


// 枚举类型的raw value值不一定是顺序的
enum Coin: Int{
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

let coin: Coin = .Quarter
print("It's \(coin.rawValue) cents")


// 枚举类型的raw value不一定是Int
enum ProgrammingLanguage: String{
    case Swift = "Swift"
    case ObjectiveC = "Objective-C"
    case C = "C"
    case Java = "Java"
}

let myFavoriteLanguage: ProgrammingLanguage = .Swift
print( "\(myFavoriteLanguage.rawValue) is my favorite language.")


// 使用String作为raw value有默认值
enum ProgrammingLanguage2: String{
    case Swift
    case ObjectiveC = "Objective-C"
    case C
    case Java
}

let myFavoriteLanguage2: ProgrammingLanguage2 = .Swift
print( "\(myFavoriteLanguage2.rawValue) is my favorite language.")
