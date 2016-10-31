//: Playground - noun: a place where people can play

import UIKit


// 另外一个应该使用枚举的例子
func season( month: String ) -> String{
    
    switch month{
    case "March", "April", "May":
        return "Spring"
    case "June", "July", "August":
        return "Summer"
    case "September", "October", "November":
        return "Autumn"
    case "December", "January", "February":
        return "Winter"
    default:
        return "Not valid"
    }
}

season("April")


// 定义枚举类型
enum Month{
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}


//let month: Month = Month.April
let month = Month.April

// 使用枚举类型
func season( month: Month ) -> String{
    
    switch month{
    case Month.March, Month.April, Month.May:
        return "Spring"
    case Month.June, Month.July, Month.August:
        return "Summer"
    case Month.September, Month.October, Month.November:
        return "Autumn"
    case Month.December, Month.January, Month.February:
        return "Winter"
    }
}

season(month)


// 枚举类型名Month在一些情况下可以省略 - Type Inference
func season2( month: Month ) -> String{
    
    switch month{
    case .March, .April, .May:
        return "Spring"
    case .June, .July, .August:
        return "Summer"
    case .September, .October, .November:
        return "Autumn"
    case .December, .January, .February:
        return "Winter"
    //default不再需要
    }
}


enum Season{
    case Spring
    case Summer
    case Autumn
    case Winter
}

enum Season2{
    case Spring, Summer, Autumn, Winter
}

enum Month2{
    case January, February, March, April, May, June, July, August, September, October, November, December
}


// 返回季节的枚举类型
func season3( month: Month ) -> Season{
    
    switch month{
    case .March, .April, .May:
        return .Spring
    case .June, .July, .August:
        return .Summer
    case .September, .October, .November:
        return .Autumn
    case .December, .January, .February:
        return .Winter
    }
}
