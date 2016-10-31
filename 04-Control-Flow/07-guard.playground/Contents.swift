//: Playground - noun: a place where people can play

import UIKit

func buy( money: Int , price: Int , capacity: Int , volume: Int){

    if money >= price{
        if capacity >= volume{
            print("I can buy it!")
            print("\(money-price) Yuan left.")
            print("\(capacity-volume) cubic meters left")
        }
        else{
            print("No enough capacity")
        }
    }
    else{
        print("Not enough money")
    }
}


func buy2( money: Int , price: Int , capacity: Int , volume: Int){
    
    guard money >= price else{
        print("Not enough money")
        return
    }

    guard capacity >= volume else{
        print("Not enough capacity")
        return
    }

    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left")
}

let money = 100
let price = 70

let capacity = 50
let volume = 20

buy( money, price: price, capacity: capacity, volume: volume)
buy2( money, price: price, capacity: capacity, volume: volume)

