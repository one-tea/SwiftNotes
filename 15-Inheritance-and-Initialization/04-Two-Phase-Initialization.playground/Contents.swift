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
        return "Avatar \(name). life = \(life)"
    }
    
    init(name: String){
        self.name = name
    }

    func beAttacked( attack: Int ){
        self.life -= attack
    }
}

class User: Avatar{

    var score = 0
    var level = 0
    // 没有初始值，就需要提供init函数
    var group: String
    
    override var description: String{
        return "User \(name). life = \(life); score = \(score); level = \(level)"
    }
    
    // 不能只有group，因为父类的name也需要初始化
//    init(group: String){
//        self.group = group
//    }
    
    // 不能只赋值，需要调用父类的构造函数
//    init(name: String, group: String){
//        // name不再self中
//        //self.name = name
//        super.name = name
//        self.group = group
//    }
    
    // Two-Phase Initialization
    init(name: String, group: String){
        
        // Phase1: 从子类向父类初始化所有的变量
        self.group = group
        
        // 在所有变量没有初始化完成之前，不能调用其他方法
//        if self.group == ""{
//            //getScore(-10)
//            // 虽然此时能调用score，但是不建议
//            self.score -= 10
//        }
//        // 父类的成员变量，即使有初始值，也不能使用
//        //print(self.life)
        
        super.init(name: name)
        
        // Phase2: 所有成员变量初始化完成以后，进行成员变量相关的逻辑调整
        if self.group == ""{
            getScore(-10)
            self.life -= 5
        }
    }
    
    func getScore(score: Int){
        self.score += score
        if self.score > level * 100 {
            //level += 1
            levelUp()
        }
    }
    
    func levelUp(){
        level += 1
        life = 100
    }
    
    
}

final class Magician: User {
    
    var magic = 100
    override var description: String{
        return "I'm Magician \(name)."
    }
    
    init(name: String){
        let defaultGroups = ["Gryffindor","Hufflepuff","Ravenclaw","Slytherin"]
        let group = defaultGroups[random()%4]
        super.init(name: name, group: group)
    }
    
    func heal( user: User ){
        user.life += 10
    }
}

final class Warrior: User{
    
    var weapon: String
    
    init(name: String , group: String, weapon: String){
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    
    override var description: String{
        return "I'm Warrior \(name)."
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack/2
    }
}
