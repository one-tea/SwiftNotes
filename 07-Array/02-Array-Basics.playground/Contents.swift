//: Playground - noun: a place where people can play

import UIKit


var numbers = [1,2,3,4,5]
var vowels = ["A","E","I","O","U"]
var emptyArray = [Int]()


// 数组长度
vowels.count


// 判空
numbers.isEmpty
emptyArray.isEmpty


// 获取元素
vowels[2]
// 数组越界是一个严重的错误
//vowels[-1]
//vowels[5]


// 获取第一个元素和最后一个元素，返回的是可选型
vowels.first
vowels.last
emptyArray.first

if let firstVowel = vowels.first{
    print("The first vowel is " + firstVowel)
}

vowels.first!

vowels[vowels.count-1]


// 获取最小，最大值
numbers.minElement()
vowels.maxElement()


// 使用范围
numbers[2..<4]
numbers[2..<numbers.count]


// 包含
vowels.contains("A")
vowels.contains("B")

let letter = "A"
if vowels.contains( letter ){
    print("\(letter) is a vowel")
}
else{
    print("\(letter) is not a vowel")
}


vowels.indexOf("E")

if let index = vowels.indexOf("E"){
    print("E is a vowel in position \(index+1).")
}
else{
    print("E is not a vowel.")
}


// 遍历
for index in 0..<numbers.count{
    numbers[index]
}

for number in numbers{
    print(number)
}

for (index, vowel) in vowels.enumerate(){
    print("\(index+1): \(vowel)")
}


// 比较
var oneToFive = [1,2,3,4,5]
numbers == oneToFive

var oneToFive2 = [1,2,4,3,5]
numbers == oneToFive
