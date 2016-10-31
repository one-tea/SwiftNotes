//: Playground - noun: a place where people can play

import UIKit

var point = ( 5, 2 )
var httpResponse = ( 404 , "Not Found" )


// 元组的类型
let point2: ( Int , Int ) = ( 10 , 4 )
let httpResponse2: ( Int , String ) = ( 200 , "OK" )


// 元组的解包
let ( x , y ) = point2
x
y


let ( statusCode , statusMessage ) = httpResponse
statusCode
statusMessage


// 元组分量
httpResponse.0
httpResponse.1


// 命名元组分量
let point3 = ( x: 2 , y: 1 )
point3.x
point3.y

let point4: (x:Int , y:Int) = (3,4)
point4.x
point4.y


// 使用_忽略元组分量
let loginResult = ( true , "liuyubobobo" )
let ( isLoginSuccess , _ ) = loginResult
if isLoginSuccess{
    print("Login success!")
}
else{
    print("Login failed!")
}


// 元组的比较
// Swift 2.2中新添加了元组的比较功能，但是这个概念还是非常好理解的：）
point3 < point4
point > point2

let error1 = ( "404" , "Not found" )
let error2 = ( "400" , "Bad Request" )
error1 > error2
