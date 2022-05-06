import UIKit

// Fizz Buzz. Swift.

func fizzBuzz(_ n: Int) -> [String] {
    var returnArray = [String]()
    let array = Array(1...n)
    
    for i in array {
        if i % 3 == 0 { returnArray.append("Fizz"); continue }
        if i % 5 == 0 { returnArray.append("Buzz"); continue }
        if (i % 5 == 0) && (i % 3 == 0) { returnArray.append("FizzBuzz"); continue }
        returnArray.append(i.description)
    }
    
    return returnArray
}

fizzBuzz(5)
