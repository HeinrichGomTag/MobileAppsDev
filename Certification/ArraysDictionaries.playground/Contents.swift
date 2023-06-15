import Foundation

// Arrays and Dictionaries

var names: [Any] = [1, 2, 3, "Joe", "Smith", 1.23]
var numbers: [Int] = [1, 2, 3]

for _ in numbers {
    // print(number)
}

var cars: [String: Int] = ["bmw": 3, "Honda": 1, "Lexus": 12]

for car in cars {
    // print(car)
}

for (key, value) in cars {
    // print("Car: \(key) -> \(value)")
}

for car in cars {
    print("Car: \(car.key) -> \(car.value)")
}
