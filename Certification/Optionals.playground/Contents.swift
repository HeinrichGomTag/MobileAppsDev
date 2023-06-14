import Foundation

// Optionals + Unwrapping

var name: String? = "Joe"
name = nil

var x: Int? = 3
var y: Int? = 12

// var result = x + y

if let value = x {
    if let value2 = y {
        let result = value + value2
        print(result)
    }
}


var price: Double? = nil
// print(price)
price = 1.23
// print(price)

type(of: price)
