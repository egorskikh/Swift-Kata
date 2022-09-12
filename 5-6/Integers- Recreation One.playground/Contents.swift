import UIKit

// Integers: Recreation One

func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {
    return (m...n).flatMap { (val) -> (Int, Int)? in
        let divisors = (1...(Int(sqrt(Double(val)))))
            .flatMap({val % $0 == 0 ? [$0, val / $0] : []})
        
        let sum = Array(Set(divisors)).reduce(0, {$0 + ($1 * $1)})
        
        if sqrt(Double(sum)).truncatingRemainder(dividingBy: 1) == 0 {
            return (val, sum)
        }
        
        return nil
    }
}
