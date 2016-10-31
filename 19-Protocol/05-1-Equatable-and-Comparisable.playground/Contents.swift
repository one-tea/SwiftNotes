//: Playground - noun: a place where people can play

import UIKit


// Equatable and comparable
struct Record: Equatable, Comparable{
    
    var wins: Int
    var losses: Int
}
// 必须紧跟着写
func ==(left: Record, right: Record) -> Bool{
    return left.wins == right.wins && left.losses == right.losses
}
func <(left: Record, right: Record) -> Bool{
    if left.wins != right.wins{
        return left.wins < right.wins
    }
    return left.losses > right.losses
}

let recordA = Record(wins: 10, losses: 5)
let recordB = Record(wins: 10, losses: 5)

recordA == recordB

// 不仅仅是重载 == 的意义在于，告诉别人，我是Equatable的！
var team1Record = Record(wins: 10, losses: 3)
var team2Record = Record(wins: 8, losses: 5)
var team3Record = Record(wins: 8, losses: 8)
var records = [team1Record,team2Record,team3Record]

records.sort()

