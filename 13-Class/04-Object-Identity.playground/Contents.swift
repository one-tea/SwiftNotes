//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var firstName: String
    var lastName: String
    var career: String?
    
    init(firstName: String, lastName: String, career: String){
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String{
        
        return firstName + " " + lastName
    }
}


let person1 = Person(firstName: "Steven", lastName: "Jobs", career: "CEO")
let person2 = person1

// Object identity
//person1 == person2
person1 === person2


let person3 = Person(firstName: "Steven", lastName: "Jobs", career: "CEO")
person1 === person3
person1 !== person3


