import Foundation

public class GameManager{
    
    public static let defaultManager = GameManager()
    public var score = 0
    public var level = 0
    
    private init(){
    
    }
    
    public func addScore(){
        score += 10
    }
}