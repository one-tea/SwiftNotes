//: Playground - noun: a place where people can play

import UIKit


func changeScores( inout scores: [Int] , by changeScore: (Int)->Int ){
    
    for (index,score) in scores.enumerate(){
        scores[index] = changeScore(score)
    }
}

func changeScore(score: Int) -> Int{
    return Int(sqrt(Double(score))*10)
}


var scores = [65, 91, 45, 97, 87, 72, 33]
changeScores(&scores, by: changeScore)


// map
scores.map(changeScore)

func isPassOrFail(score: Int) -> String{
    return score < 60 ? "Fail" : "Pass"
}
scores.map(isPassOrFail)


// filter
func fail(score: Int) -> Bool{
    return score < 60
}
scores.filter(fail)


// reduce
func add(num1: Int , _ num2: Int) -> Int{
    return num1 + num2
}
scores.reduce(0, combine: add)
scores.reduce(0, combine: +)

func concatenate( str: String , num: Int ) -> String{
    return str + String(num) + " "
}
scores.reduce("", combine: concatenate)
