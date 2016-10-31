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
    
    func changeCareer( newCareer: String ){
        self.career = newCareer
    }
}


let person = Person(firstName: "Yubo", lastName: "Liu", career: "Developer")
person.changeCareer(newCareer: "Teacher")


// 在struct中，改变自身的方法需要声明为mutating
struct Location{
    
    var x = 0
    var y = 0
    
    mutating func goEast(){
        self.x += 1
    }
}

var location = Location()
location.goEast()


// 同样，在enum中，由于也是值变量，改变自身的方法需要声明为mutating
enum Switch{
    case On
    case Off
    
    mutating func click(){
        switch self{
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var button = Switch.Off
button.click()

