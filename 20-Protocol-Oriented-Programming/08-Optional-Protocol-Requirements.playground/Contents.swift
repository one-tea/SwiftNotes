//: Playground - noun: a place where people can play

import UIKit


@objc protocol TurnBasedGameDelegate{
    
    func gameStart()
    func playerMove()
    func gameEnd()
    
    optional func turnStart()
    optional func turnEnd()

    func gameOver() -> Bool
}

protocol TurnBasedGame{
    
    var turn: Int{get set}
    
    func play()
}

class SinglePlayerTurnBasedGame: NSObject, TurnBasedGame{
    
    var delegate:TurnBasedGameDelegate!
    var turn = 0
    
    func play(){
        
        delegate.gameStart()
        while !delegate.gameOver() {
            if let turnStart = delegate.turnStart{
                turnStart()
            }
            else{
                print("Round",turn,":")
            }
            
            delegate.playerMove()
            
            delegate.turnEnd?()
            
            turn += 1
        }
        delegate.gameEnd()
    }
}


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
    
    @objc func gameStart() {
        wins = 0
        otherWins = 0
        print("== Rock Paper Scissor ==")
    }
    
    func gameOver() -> Bool {
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
    
    func turnStart() {
        print("*** ROUND START ***")
    }
    
    func turnEnd(){
        print("*******************")
    }

}

let rockPaperScissors = RockPaperScissors()
rockPaperScissors.play()

