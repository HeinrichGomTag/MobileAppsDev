import Foundation

// Protocol

protocol CarDelegate{ // CarDataSource
    var color: String{get set}
    
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car{
    
}

class BMW: Car, CarDelegate{
    var color: String
    
    init(color:String) {
        self.color = color
    }
    
    func drive() {}
    
    func isAllWheelDrive() -> Bool {
        return true
    }
    
    
}
