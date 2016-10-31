//: Playground - noun: a place where people can play

import UIKit


func changeScores1( inout scores:[Int] ){
    
    for (index,score) in scores.enumerate(){
        scores[index] = Int(sqrt(Double(score))*10)
    }
}

func changeScores2( inout scores:[Int] ){
    
    for (index,score) in scores.enumerate(){
        scores[index] = Int( Double(score) / 150.0 * 100.0 )
    }
}


var scores1 = [36,61,78,89,99]
changeScores1(&scores1)

var scores2 = [88,101,124,137,150]
changeScores2(&scores2)
