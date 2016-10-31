//: Playground - noun: a place where people can play

import UIKit


func changeScores( inout scores: [Int] , by changeScore: (Int)->Int ){
    
    for (index,score) in scores.enumerate(){
        scores[index] = changeScore(score)
    }
}


func changeScore1( score: Int ) -> Int{
    
    return Int(sqrt(Double(score))*10)
}

func changeScore2( score: Int ) -> Int{
    
    return Int( Double(score) / 150.0 * 100.0 )
}


var scores1 = [36,61,78,89,99]
changeScores(&scores1, by: changeScore1)

var scores2 = [88,101,124,137,150]
changeScores(&scores2, by: changeScore2)


func changeScore3( score: Int ) -> Int{
    
    return score + 3
}

var scores3 = [59,61,76,83,95]
changeScores(&scores3, by: changeScore3)
