//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// for-in 遍历String
for c in str.characters{
    print(c)
}


// Character和String的相互转换
let mark: Character = "!"
//str + mark
str + String(mark)

// append 相当于 +=
str.append(mark)


// Characters是基于Unicode的
let englishLetter: Character = "a"
let chineseLetter: Character = "慕"
let dog: Character = "🐶"
let coolGuy = "\u{1F60E}"


// String对Unicode的支持
var coolLetters = "abc"
coolLetters.characters.count

var chineseLetters = "慕课网"
chineseLetters.characters.count

var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"
coolGuys.characters.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe.characters.count
cafe2.characters.count


// String的比较
cafe == cafe2
