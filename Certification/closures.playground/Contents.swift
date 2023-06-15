
import Foundation

// Closures / Lambda

var myFunction: ((Int) -> Bool) = { number in
    if (number > 3){
        return true
    }
    return false
}

myFunction(4)

func isGreaterThanThree(number:Int) -> Bool {
    /* if (number > 3){
        return true
    }
    return false */
    
    guard number > 3 else{ return false }
    return true
}

isGreaterThanThree(number: 4)


var myFunction2: ((Int) -> Void) = { number in
    if (number > 3){
        print("Greater")
    }
}

myFunction2(4)

var myFunction3: ((Int) -> ()) = { number in
    if (number > 3){
        print("Greater")
    }
}

myFunction3(4)


var myFunction4: ((Int) -> Void)? = { number in
    if (number > 3){
        print("Greater")
    }
}

myFunction4?(4)


var myFunction5: ((Int) -> Void)? = { number in
    if (number > 3){
        print("Greater")
    }
}

if let myRealFunc = myFunction5 {
    myRealFunc(5)
}


let myFunction6: ((Int) -> Bool) = { number in
    if (number > 3){
        return true
    }
    return false
}

let res = myFunction6(2)

func isGreaterThanThree2(number:Int) -> Bool {
    /* if (number > 3){
        return true
    }
    return false */
    
    guard number > 3 else{ return false }
    return true
}

let res2 = isGreaterThanThree2(number: 4)
