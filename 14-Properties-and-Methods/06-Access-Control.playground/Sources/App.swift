import Foundation

public class App{
    
    private let ui = UI()
    public var name: String
    
    public init(name: String){
        self.name = name
    }
    
    public func switchMode(){
        switch ui.themeMode{
        case .DayMode:
            ui.themeMode = .NightMode
        case .NightMode:
            ui.themeMode = .DayMode
        }
    }
    
    public func show(){
        print("The App name is \(name)")
        ui.show()
    }
}