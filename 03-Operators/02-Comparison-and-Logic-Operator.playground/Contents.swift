//: Playground - noun: a place where people can play

import UIKit

let money = 100
let price = 70

// 比较运算符
if money >= price{
    print("Buy it")
}


let capacity = 30
let volume = 50

// 逻辑运算符
if money >= price && capacity >= volume{
    print("Buy it")
}

if money < price || capacity < volume{
    print("Can not buy it")
}

if !(money >= price && capacity >= volume){
    print("Can not buy it")
}


// 复杂逻辑的串联
var isUsernameOK = false
var isPasswordOK = false

var isPhoneNumberOK = true
var isPhoneCodeOK = false

if (isUsernameOK && isPasswordOK) ||
    (isPhoneNumberOK && isPhoneCodeOK){
    
    print("Login success!")
}
else{
    print("Login Failed")
}

