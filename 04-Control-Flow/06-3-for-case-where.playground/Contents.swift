//: Playground - noun: a place where people can play

import UIKit

for i in 1...100{
    if i%3 == 0{
        print(i)
    }
}

for case let i in 1...100 where i % 3 == 0{
    print(i)
}

