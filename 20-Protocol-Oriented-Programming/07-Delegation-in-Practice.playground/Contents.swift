//: Playground - noun: a place where people can play

import UIKit


protocol TurnBasedGameDelegate{
    
    func gameStart()
    func playerMove()
    func gameEnd()

    func gameOver() -> Bool
}

protocol TurnBasedGame{
    
    var turn: Int{get set}
    
    func play()
}

class SinglePlayerTurnBasedGame: TurnBasedGame{
    
    var delegate:TurnBasedGameDelegate!
    var turn = 0
    
    func play(){
        
        delegate.gameStart()
        while !delegate.gameOver() {
            print("ROUND",turn,":")
            delegate.playerMove()
            turn += 1
        }
        delegate.gameEnd()
    }
}

class RollNumberGame: SinglePlayerTurnBasedGame, TurnBasedGameDelegate{
    
    var score = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    func gameStart() {
        
        score = 0
        turn = 0
        
        print("Welcome to Roll Number Game.")
        print("Try to use least turn to make total 100 scores!")
    }
    
    func playerMove() {
        let rollNumber = Int(arc4random())%6 + 1
        score += rollNumber
        print("You rolled a" , rollNumber , "! The score is",score,"now!")
    }
    
    func gameEnd() {
        print("Congratulation! You win the game in" , turn , "ROUND!")
    }
    
    func gameOver() -> Bool{
        return score >= 30
    }
}


let rollingNumber = RollNumberGame()
rollingNumber.play()



class RockPaperScissors: SinglePlayerTurnBasedGame, TurnBasedGameDelegate{
    
    enum Shape: Int, CustomStringConvertible{
        case Rock
        case Scissors
        case Papper
        
        func beat(shape: Shape) -> Bool{
            return (self.rawValue + 1)%3 == shape.rawValue
        }
        
        var description: String{
            
            switch(self){
            case .Papper:   return "Paper"
            case .Rock:     return "Rock"
            case .Scissors: return "Scissors"
            }
        }
    }
    
    var wins = 0
    var otherWins = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    static func go() -> Shape{
        return Shape(rawValue: Int(arc4random())%3)!
    }
    
    func gameStart() {
        wins = 0
        otherWins = 0
        print("== Rock Paper Scissor ==")
    }
    
    func gameOver() -> Bool {
        //return turn >= 3
        return wins >= 2 || otherWins >= 2
    }
    
    func gameEnd() {
        if( wins >= 2 ){
            print("YOU WIN!")
        }
        else{
            print("YOU LOSE...")
        }
    }
    
    func playerMove() {
        
        let yourShape = RockPaperScissors.go()
        let otherShape = RockPaperScissors.go()
        print("Your:",yourShape)
        print("Other:",otherShape)
        
        if yourShape.beat(otherShape){
            print("You win this round")
            wins += 1
        }
        else if otherShape.beat(yourShape){
            print("You lose this round")
            otherWins += 1
        }
        else{
            print("Tie in this round")
        }
    }

}

let rockPaperScissors = RockPaperScissors()
rockPaperScissors.play()

