//: Playground - noun: a place where people can play

import UIKit

// if - else
let rating = "A"
if rating == "A"{
    print("Great!")
}
else if rating == "B"{
    print("Just so-so")
}
else if rating == "C"{
    print("It's Bad")
}
else{
    print("Error")
}


// switch
switch rating{
case "A":
    print("Great!")
case "B":
    print("Just so-so")
case "C":
    print("It's Bad")
default:
    print("Error")
}


// 在一个case中判断多个值
switch rating{
case "a","A":
    print("Great!")
case "b","B":
    print("Just so-so")
case "c","C":
    print("It's Bad")
default:
    print("Error")
}


// 使用switch判断浮点数
let x = 2.8
switch x{
case 2.8:
    print("I'm 2.8")
default:
    print("I'm not 2.8")
}


// 使用switch判断布尔值
let y = true
switch y{
case true:
    print("I'm true")
default:
    print("I'm false")
}

