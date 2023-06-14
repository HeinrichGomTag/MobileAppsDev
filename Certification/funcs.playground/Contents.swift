
import Foundation

// Funcs and Params

func myFirstFunction(){
    
}

func addTwoNumbers1(a: Int, b:Int){
    print(a+b)
}

func addTwoNumbers2(a: Int, b:Int) -> Int{
    return a+b
}

func SquareNumber(number: Int) -> Int{
    return number * number
}

func log(){
    
}

addTwoNumbers1(a: 1, b: 2)

var x = 3
var y = 1232132
let sum = addTwoNumbers2(a: x, b: y)

let square = SquareNumber(number: x)
print(square)

log()

func isEven(num: Int) -> Bool {
    if (num % 2 == 0){
        return true
    }
    return false
}

print(isEven(num: 5))
print(isEven(num: 8))
print(isEven(num: 720))
