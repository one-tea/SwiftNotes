//: Playground - noun: a place where people can play

import UIKit


protocol Pet{

    var name: String{ get set }

    init(name: String)
    
    func playWith()
    func fed()
}

class Animal{
    
    var type: String = "mammal"
}


// 如果一个类有继承的类，则父类必须放在前面
class Dog: Animal, Pet{
    
    // 如果protocol没有init(name)的要求，name有默认名字就够了
    var name: String = "Puppy"
    
    // 如果protocol有init，则在class中必须注明required
    required init(name: String){
        self.name = name
    }
    
    func playWith() {
        print("Wong")
    }
    
    func fed(){
        print("I love bones")
    }
}


final class Cat: Animal, Pet{
    
    var name: String = "Kitten"
    
    // 如果是final class, init可以没有required, 因为也不会再被继承了
    init(name: String){
        self.name = name
    }
    
    func playWith() {
        print("Meow")
    }
    
    func fed(){
        print("I love fish")
    }
}


class Bird: Animal{
    
    var name: String = "Little Little Bird"
    
    init(name: String){
        self.name = name
    }
}


// 如果只是继承Bird，Bird的init为required，则override可以省略
// 否则，必须有override, 可以没有required
// 因为有Pet，则required也不能省
class Parrot: Bird, Pet{
    
    required override init(name: String){
        super.init( name: name + " " + name )
    }
    
    func playWith() {
        print("Hello")
    }
    
    func fed(){
        print("Thank you!")
    }
}

