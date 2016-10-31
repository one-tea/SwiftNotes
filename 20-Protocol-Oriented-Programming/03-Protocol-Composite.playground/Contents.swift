//: Playground - noun: a place where people can play

import UIKit

protocol Record: CustomStringConvertible{
    
    var wins: Int {get}
    var losses: Int {get}
}

extension Record{
    
    var description: String{
        return String(format: "WINS: %d , LOSSES: %d", arguments: [wins,losses])
    }
    
    var gamePlayed: Int{
        return wins + losses
    }
    
    func winningPercent() -> Double {
        return Double(wins)/Double(gamePlayed)
    }
}

protocol Tieable {
    var ties: Int {get set}
}

extension Record where Self: Tieable{
    
    var gamePlayed: Int{
        return wins + losses + ties
    }
    
    func winningPercent() -> Double {
        return Double(wins)/Double(wins + losses + ties)
    }
}

protocol Prizable{
    
    func isPrizable() -> Bool
}


struct BasketballRecord: Record, Prizable{
    
    var wins: Int
    var losses: Int
    
    func isPrizable() -> Bool{
        return wins > 2
    }
}

struct BaseballRecord: Record, Prizable{
    
    var wins: Int
    var losses: Int
    let gamePlayed = 162
    
    func isPrizable() -> Bool{
        return gamePlayed > 10 && winningPercent() >= 0.5
    }
}

struct FootballRecord: Record, Tieable, Prizable{
    var wins: Int
    var losses: Int
    var ties: Int
    
    func isPrizable() -> Bool{
        return wins > 1
    }
}


var basketballTeamRecord = BasketballRecord(wins: 2, losses: 10)
var baseballTeamRecord = BaseballRecord(wins: 10, losses: 5)
var footballTeamRecord = FootballRecord(wins: 1, losses: 1, ties: 1)


func award(one: protocol<CustomStringConvertible, Prizable>){
    
    if one.isPrizable(){
        print(one)
        print("Congratulation! You won a prize!")
    }
    else{
        print(one)
        print("You can not have the prize!")
    }
}

award(baseballTeamRecord)


struct Student: CustomStringConvertible, Prizable{
    var name: String
    var score: Int
    var description: String{
        return name
    }
    
    func isPrizable() -> Bool {
        return score >= 60
    }
}

let liuyubobobo = Student(name: "liuyubobobo", score: 100)
award(liuyubobobo)


