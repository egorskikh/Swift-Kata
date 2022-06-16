import UIKit

// Banker's Plan. Swift.

func fortune(_ f0: Int, _ p: Double, _ c0: Int, _ n: Int, _ i: Double) -> Bool {
    var f:Int = f0
    var c:Int = c0
    
    for _ in 1..<n {
        if f < c { return false }
        f += Int(Double(f) * p / 100) - c
        c += Int(Double(c) * i / 100)
    }
    
    return true
}
