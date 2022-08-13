import UIKit

// Triangle number check

func isTriangleNumber(_ number: Int) -> Bool {
    let val = 0.5 * sqrt(Double(8 * number + 1)) - 0.5
    return rint(val) == val
}
