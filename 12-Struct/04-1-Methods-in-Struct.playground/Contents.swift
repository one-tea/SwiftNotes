//: Playground - noun: a place where people can play

import UIKit


struct Location{
    
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
    
    init(latitude: Double, longitude: Double){
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(coordinateString: String){
        
        let commaPos = coordinateString.rangeOfString(",")!.startIndex
        let firstElement = coordinateString.substringToIndex(commaPos)
        let secondElement = coordinateString.substringFromIndex(commaPos.successor())
        self.latitude = Double(firstElement)!
        self.longitude = Double(secondElement)!
    }
    
    func printLocation(){
        print("The Location is \(self.latitude),\(self.longitude)")
    }
    
    func isNorth() -> Bool{
        return self.latitude > 0
    }
    
    func isSouth() -> Bool{
        return !self.isNorth()
    }
    
    // 注意，给出两个地点的经纬度，计算两点之间的距离不是这么计算！
    // 这里只做演示用
    func distanceTo( location: Location ) -> Double{
        
        return sqrt(pow(self.latitude - location.latitude,2) + pow(self.longitude - location.latitude,2))
        
    }
}


let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
appleHeadQuarterLocation.printLocation()
appleHeadQuarterLocation.isNorth()
appleHeadQuarterLocation.isSouth()

let googleHeadQuarterLocation = Location(latitude: 37.4220, longitude: -122.0841)
appleHeadQuarterLocation.distanceTo(googleHeadQuarterLocation)

