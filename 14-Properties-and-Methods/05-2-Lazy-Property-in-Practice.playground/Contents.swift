//: Playground - noun: a place where people can play

import UIKit

// 延迟属性适用的情况非常多

// Location
class Location{
    
    let latitude: Double
    let longitude: Double
    lazy var address: String? = {
        // 执行经纬度解析
        return nil
    }()
    
    init( latitude: Double , longitude: Double ){
        self.latitude = latitude
        self.longitude = longitude
    }
}

// Book
class Book{
    
    let name: String
    lazy var content: String? = {
        // 从本地读取书的内容
        return nil
    }()
    
    init( name: String ){
        self.name = name
    }
}

// Web
class Web{
    
    let url: String
    lazy var html: String? = {
        // 从网络读取url对应的html
        return nil
    }()
    
    init(url: String){
        self.url = url
    }
}
