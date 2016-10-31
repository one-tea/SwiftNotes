//: Playground - noun: a place where people can play

import UIKit

var age: Int? = 17
print(age)

age = nil
print(age)


// Optional实际是一个enum
var website: Optional<String> = Optional.Some("imooc.com")
print(website)

website = Optional.None
print(website)

website = .Some("imooc.com")
website = .None

website = "imooc.com"
website = nil


// 从enum的角度看Optional的解包
switch website{
case .None:
    print("No website")
case let .Some(website):
    print("The website is \(website)")
}


// Swift为Optional的解包设置的语法
if let website = website{
    print("The website is \(website)")
}
else{
    print("No website")
}

