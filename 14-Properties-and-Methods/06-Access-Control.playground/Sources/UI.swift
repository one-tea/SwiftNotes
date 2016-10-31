//: Playground - noun: a place where people can play

import UIKit

internal enum Theme{
    case DayMode
    case NightMode
}

internal class UI{
    
    private var fontColor: UIColor!
    private var backgroundColor: UIColor!
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
    
    private func changeTheme( themeMode: Theme ){
        switch(themeMode){
        case .DayMode:
            fontColor = UIColor.blackColor()
            backgroundColor = UIColor.whiteColor()
        case .NightMode:
            fontColor = UIColor.whiteColor()
            backgroundColor = UIColor.blackColor()
        }
    }
    
    func show(){
        print("The font color is \(fontColor == UIColor.whiteColor() ? "WHITE" : "BLACK" )")
        print("The background color is \(backgroundColor == UIColor.whiteColor() ? "WHITE" : "BLACK")")
    }
}





