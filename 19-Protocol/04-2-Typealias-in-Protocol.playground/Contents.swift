//: Playground - noun: a place where people can play

import UIKit


// 新版本中，在Protocol中声明，用associatedtype
protocol WeightCalculable {
    
    associatedtype WeightType
    
    var weight: WeightType { get }
}


// 在具体实现中，用typealias
class iPhone7: WeightCalculable{
    
    typealias WeightType = Double
    
    var weight: WeightType{
        return 0.114
    }
}

class Ship: WeightCalculable{
    
    typealias WeightType = Int
    
    var weight: WeightType
    
    init(weight: Int){
        self.weight = weight
    }
}

extension Int{
    typealias Weight = Int
    var t: Weight{return 1_000*self}
}

let titanic = Ship(weight: 46_328_000)


