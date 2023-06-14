
import Foundation

// Classes And Structs (value type)

class Car { // Reference type
    
    let make: String
    let color: String
    
    init(color: String, make: String){
        self.color = color
        self.make = make
    }
}

var bmw = Car(color: "blue", make: "bmw")
var car2 = Car(color: "red", make: "honda")

var car3 = bmw

// CLASS car2 -> bmw
// STRUCT car | bmw
