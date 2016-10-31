//: Playground - noun: a place where people can play

import UIKit


// Optional chaining
var errorMessage: String? = "Not Found"
if let errorMessage = errorMessage{
    errorMessage.uppercaseString
}

errorMessage?.uppercaseString

var uppercaseErrorMessage = errorMessage?.uppercaseString

if let errorMessage = errorMessage?.uppercaseString{
    errorMessage
}

// Optional chaining 也可以使用!
let uppercaseErrorMessage2 = errorMessage!.uppercaseString



