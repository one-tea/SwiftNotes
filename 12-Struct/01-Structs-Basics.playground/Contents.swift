//: Playground - noun: a place where people can play

import UIKit


// 声明一个结构
struct Location{
    let latitude: Double
    let longitude: Double
}


// 初始化一个结构体
let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
let googleHeadQuarterLocation: Location = Location(latitude: 37.4220, longitude: -122.0841)


// 获取属性值
appleHeadQuarterLocation.latitude
googleHeadQuarterLocation.longitude


// 属性值为let不可改变
//appleHeadQuarterLocation.latitude = 0

// 结构体为let，也不可改变
//appleHeadQuarterLocation = googleHeadQuarterLocation


// 属性含有变量var的结构体
struct Place{
    
    let location: Location
    var name: String
}

// 要想修改属性，结构体变量也必须是var
var googleHeadQuarter = Place(location: appleHeadQuarterLocation, name: "Google")
//googleHeadQuarter.location = appleHeadQuarterLocation
googleHeadQuarter.name = "Alphabeta"


