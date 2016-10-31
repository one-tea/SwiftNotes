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


// 对于class,let也可以修改内部属性
let person = Person(firstName: "Yubo", lastName: "Liu", career: "Developer")
person.firstName = "Steve"
person.lastName = "Jobs"
person.career = "CEO"

// 对于class，let是指不能指向其他空间
//person = Person(firstName: "Steve", lastName: "Jobs", career: "CEO")

