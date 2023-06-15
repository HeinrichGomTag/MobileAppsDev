import Foundation

// Guard Statements

func numberLargerThanFive(number: Int) -> Bool {
    guard number > 5 else { return false }
    return true
}

func numberLargerThanFiveAndFour(number: Int) -> Bool {
    guard number > 5, number > 4 else { return false }
    return true
}

let text: String?

text = "Hello World"

if let value = text{
    // print(value)
}

func check(){
    guard let value = text else { return }
    print(value)
}

check()
