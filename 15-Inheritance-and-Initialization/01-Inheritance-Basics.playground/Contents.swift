//: Playground - noun: a place where people can play

import UIKit

class Avatar{
    
    var name: String
    var life = 100
    var isAlive: Bool = true
    
    init(name: String){
        self.name = name
    }
    
    func beAttacked( attack: Int ){
        life -= attack
        if life <= 0{
            isAlive = false
        }
    }
}

let someone = Avatar(name: "Avatar")


// 继承
class User: Avatar{

    var score = 0
    var level = 0
    
    func getScore(score: Int){
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}


let player = User(name: "liuyubobobo")
player.name
player.life
player.isAlive
player.score
player.level

player.beAttacked(20)
player.life

player.getScore(20)
player.score


// 使用final，阻止进一步继承
final class Magician: User {
    
    var magic = 100
    
}

let magician = Magician(name: "Harry Potter")
magician.name
magician.life
magician.isAlive
magician.score
magician.level
magician.magic


