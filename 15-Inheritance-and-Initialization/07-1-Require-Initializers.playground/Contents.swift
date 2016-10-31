//: Playground - noun: a place where people can play

import UIKit


class Avatar{
    
    var name: String
    var life = 100{
        didSet{
            if self.life <= 0{
                self.isAlive = false
            }
            if self.life > 100{
                self.life = 100
            }
        }
    }
    var isAlive: Bool = true
    var description: String{
        return "I'm Avatar \(name)."
    }
    
    required init(name: String){
        self.name = name
    }
    
    convenience init(firstName: String, lastName: String){
        self.init(name: firstName + " " + lastName)
    }
    
    func beAttacked( attack: Int ){
        self.life -= attack
    }
}

class User: Avatar{
    
    var score = 0
    var level = 0
    override var description: String{
        return "I'm User \(name)."
    }
    var group: String
    
    init( name: String , group: String){

        self.group = group
        super.init(name: name)

        if group == ""{
            self.getScore(-10)
        }
    }
    
    convenience init(group: String){
        
        let name = User.generateUserName()
        self.init(name:name , group: group)
    }
    
    convenience required init(name: String){
        self.init(name: name , group: "")
    }
    
    static func generateUserName() -> String{
        return "Player" + String(rand()%1_000_000)
    }
    
    final func getScore(score: Int){
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}


class Monster: Avatar{
    
    convenience init( type: String){
        self.init(name: type)
    }
}

class NPC: Avatar{
    
    let career: String
    
    init(name: String, career: String){
        self.career = career
        super.init(name: name)
    }
    
    convenience required init(name: String){
        self.init(name: name, career: "")
    }
}

