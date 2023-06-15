
import Foundation

// Strong VS Weak

var str = "asdfasdjhfa"

class Child {
    weak var balloon = "str"
}

var joe = Child()

