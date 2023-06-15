
import Foundation

// Ternary operator + return statement

func isBiggerThanFive(number: Int) -> Bool {
    if number > 5 {
        return true
    } else {
        return false
    }
}
isBiggerThanFive(number: 6)


func isBiggerThanFive2(number: Int) -> Bool {
    return number > 5 ? true: false
}

isBiggerThanFive2(number: 4)

func randomNumber() -> Int {
    let x = 5
    return x > 3 ? 12: 2
}
