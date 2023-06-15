
import UIKit

// Type aliases

typealias Address = [String: String]

var address: Address = ["": ""]

func validateAddress(address: Address){
    
}

var validateFunction: ((String) -> (Bool))?

func didEnterCode (code: String){
    let result = validateFunction?(code)
}

typealias PromoCodeValidationFunction = ((String) -> (Bool))?

var validateFunction1: PromoCodeValidationFunction
var validateFunction2: PromoCodeValidationFunction
var validateFunction3: PromoCodeValidationFunction
var validateFunction4: PromoCodeValidationFunction
