
import Foundation

var x = 3
var y = 2

var result = x + y
var result2 = x - y
var result3 = x / y
var result4 = x * y

x = 30
y = 7

result = x % y

if result == 0 {
    
} else {
    
}

func add (x: Int, y: Int) -> Int {
    var result = x + y
    while (result < 10) {
        result = add(x: result, y: 1)
    }
    return result
}

add(x: 1,y: 2)
