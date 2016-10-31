//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Swift"

// 不可以使用[]获取
//str[0]
//str.characters[0]

// startIndex
let startIndex = str.startIndex
startIndex
str[startIndex]

// advancedBy
str[startIndex.advancedBy(5)]
startIndex

let spaceIndex = startIndex.advancedBy(6)
spaceIndex
str[spaceIndex]

// predecessor 和 succesor
str[spaceIndex.predecessor()]
str[spaceIndex.successor()]

// endIndex
let endIndex = str.endIndex
//str[endIndex]
str[endIndex.predecessor()]

// Range
str[startIndex..<spaceIndex]
let range = startIndex..<spaceIndex.predecessor()

str.replaceRange(range, with: "Hi")
str.appendContentsOf("!!!")
str.insert("?", atIndex: str.endIndex)
str.removeAtIndex( str.endIndex.predecessor() )
str
str.removeRange( str.endIndex.advancedBy(-2)..<str.endIndex )




