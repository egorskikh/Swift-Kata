import UIKit

// Experimenting with a sequence of complex numbers. Swift.

func f(_ x: Double, _ y: Double, _ eps: Double) -> Int {
    return max(-1, Int(log(eps) / log(hypot(x, y))))
}


