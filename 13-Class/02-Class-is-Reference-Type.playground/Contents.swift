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

let person = Person(firstName: "Yubo", lastName: "Liu", career: "Developer")

var person2 = person
person2.firstName = "Steven"
person2.lastName = "Jobs"
person2.career = "CEO"

person2

person



// PPT讲解Reference Type


