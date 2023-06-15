
import Foundation

var numbers = [1, 2, 3, 4, 5, 6, 7, 12, 13, 3, 5]

func isNumberInArray(number: Int, array: [Int]) -> Bool {
    for x in array {
        if (x == number) {
            return true
        }
    }
    return false
}

var result = isNumberInArray(number: 3, array: numbers)
result = isNumberInArray(number: 93, array: numbers)

