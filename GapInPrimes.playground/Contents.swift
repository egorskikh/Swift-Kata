import UIKit

/*
 Gap in Primes. Swift.
 */
func gap(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    
    var lastPrime:Int?
    
    for number in (m...n)  {
        if !number.isPrime { continue }
        if lastPrime != nil, number - lastPrime! == g {
            return (lastPrime!, number)
        }
        lastPrime = number
    }
    return nil
}

extension Int {
    
    var isPrime: Bool {
        guard
            self >= 2
        else { return false }
        
        guard
            self != 2
        else { return true  }
        
        guard
            self % 2 != 0
        else { return false }
        
        return !Swift.stride(from: 3,
                             through: Int(sqrt(Double(self))),
                             by: 2)
            .contains { self % $0 == 0 }
    }
}
