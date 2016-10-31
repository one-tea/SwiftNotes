//: Playground - noun: a place where people can play

import UIKit

// x^4 - y^2 = 15*x*y

var gotAnswer = false
for m in 1...300{
    for n in 1...300{
        if m*m*m*m - n*n == 15*m*n{
            print(m,n)
            gotAnswer = true
            break
        }
    }
    
    if gotAnswer{
        break
    }
}


findAnswer:
for m in 1...300{
    for n in 1...300{
        
        if m*m*m*m - n*n == 15*m*n{
            
            print(m,n)
            break findAnswer
        }
    }
}
