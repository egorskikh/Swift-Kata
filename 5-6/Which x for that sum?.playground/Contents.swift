import UIKit

// Which x for that sum?

func solve(_ m: Double) -> Double {
    let s = 1+1/(2*m)
    return s-sqrt(s*s-1)
}
