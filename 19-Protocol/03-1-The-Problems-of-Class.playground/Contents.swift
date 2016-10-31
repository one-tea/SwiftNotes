//: Playground - noun: a place where people can play

import UIKit


class Pet{

    var name: String

    init(name: String){
        self.name = name
    }
    
    func playWith(){
        print("I like to play with you.")
    }
    
    func fed(){
        print("It's delicious")
    }
}


class Bird: Pet{
    
    var flySpeed: Double
    var flyHeight: Double
    
    init(name: String, flySpeed: Double, flyHeight: Double){
        
        self.flySpeed = flySpeed
        self.flyHeight = flyHeight
        super.init(name: name)
    }
}


class parrot: Bird{
    
    override init(name: String, flySpeed: Double, flyHeight: Double){
        super.init(name: name + " " + name, flySpeed: flySpeed, flyHeight: flyHeight)
    }
}


// 问题：
// Sparrow - Not a Pet, But a Bird
// Animal? But it's also a Bird!

// Use Multi-Heritance?
// pet - dog, cat, bird, what is the relationship?
// Bird? What about Plane?
