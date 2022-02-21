import UIKit

// Backwards Read Primes. Swift.

func backwardsPrime(_ start: Int, _ stop: Int) -> [Int] {
    return Array(start...stop).filter{prime($0) && prime($0.reverse) && $0 != $0.reverse}
}

func prime(_ n: Int) -> Bool {
    return n < 2 ? false : n == 2 || n == 3 || (2...Int(Double(n).squareRoot())).filter{n % $0 == 0}.isEmpty
}

extension Int {
    var reverse: Int {
        return Int(String(String(self).reversed()))!
    }
}
