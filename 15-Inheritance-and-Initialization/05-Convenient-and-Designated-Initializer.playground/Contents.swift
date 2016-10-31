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
    
    init(name: String){
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
    
    init( name: String , group: String = ""){
        
        // 构造初值
        self.group = group
        super.init(name: name)
        
        // 进一步完善
        if group == ""{
            self.getScore(-10)
        }
    }
    
    convenience init(group: String = ""){
        
        let name = User.generateUserName()
        self.init(name:name , group: group)
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

final class Magician: User {
    
    static let houses = ["Gryffindor","Hufflepuff","Ravenclaw","Slytherin"]
    var magic = 100
    override var description: String{
        return "I'm Magician \(name)."
    }
    
    override init(name: String, group: String){
        
        for houseName in Magician.houses{
            if group == houseName{
                super.init(name: name, group: group)
                return
            }
        }
        
        let group = Magician.houses[random()%4]
        super.init(name: name, group: group)
    }
    
    func heal( user: User ){
        user.life += 10
    }
}

final class Warrior: User{
    
    static let weapons = ["Sword","Axe","Spear"]
    var weapon: String
    override var description: String{
        return "I'm Warrior \(name)."
    }
    
    init(name: String , group: String, weapon: String){
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    
    convenience override init(name: String, group: String) {
        let weapon = Warrior.weapons[random()%3]
        self.init(name: name, group: group, weapon: weapon)
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack/2
    }
}


let player1 = Warrior(name: "liuyubobobo", group: "imooc")
player1.weapon


