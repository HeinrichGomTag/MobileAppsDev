import Foundation
import UIKit

// Enums and Switch Statements

enum States {
    case InProgress
    case Abort
    case Complete
    case WillStart
}

var currentState = "Complete"

let current = States.InProgress

var color: UIColor?

color = UIColor.red
color = .red

let current2 = States.InProgress

func checkState(){
    switch current2 {
    case .InProgress:
        print("Here")
        break
    case .Abort:
        break
    case .Complete:
        break
    case .WillStart:
        break
    }
}

checkState()
