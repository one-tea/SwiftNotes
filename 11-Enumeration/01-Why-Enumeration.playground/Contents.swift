//: Playground - noun: a place where people can play

import UIKit


// 使用数字代表方向，容易混淆
// north: 1
// south: 2
// east:  3
// west:  4
var direction1 = 1
if direction1 == 1{
    print("It's north")
}

// 无法控制范围
direction1 = 5


// 使用字符串，容易拼错
var direction2 = "north"
if direction2 == "north"{
    print("It's north")
}

// 拼写习惯也不同
if direction2 == "North"{
    print("It's north")
}

// 也无法控制范围
direction2 = "northeast"


// 使用静态变量
let NORTH = 1
let SOUTH = 2
let EAST  = 3
let WEST  = 4
var direction3 = NORTH
if direction3 == NORTH{
    print("It's north")
}

let BEIJING = 1
let SHANGHAI = 2
let GUANGZHOU = 3
let SHEHNZHEN = 4
let HONGKONG = 5

// 无法控制范围
direction3 = HONGKONG

// 也无法控制语意
let LEFT  = 1
let RIGHT = 2
let UP    = 3
let DOWN  = 4
direction3 = LEFT


// 更多使用Enumeration的场景：
// 扑克牌的花色
// 颜色
// 控制系统的权限（管理员，VIP，普通用户...）
// 设置：左对齐、右对齐、居中对齐
// 状态机
