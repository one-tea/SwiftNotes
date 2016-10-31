//: Playground - noun: a place where people can play

import UIKit

class UI{
    
    enum Theme{
        case DayMode
        case NightMode
    }
    
    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode{
        didSet{
            self.changeTheme(self.themeMode)
        }
    }
    
    init(){
        self.themeMode = .DayMode
        self.changeTheme(self.themeMode)
        
    }
    
    init(themeMode: Theme){
        self.themeMode = themeMode
        self.changeTheme(themeMode)
    }
    
    func changeTheme( themeMode: Theme ){
        switch(themeMode){
        case .DayMode:
            fontColor = UIColor.blackColor()
            backgroundColor = UIColor.whiteColor()
        case .NightMode:
            fontColor = UIColor.whiteColor()
            backgroundColor = UIColor.blackColor()
        }
    }
}


let ui = UI()
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.themeMode
ui.fontColor
ui.backgroundColor


// 以前就见过Nest Type
// String.Index
let str = "Hello World"
let index = str.startIndex.advancedBy(5)
str.substringToIndex(index)
