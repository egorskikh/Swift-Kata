import UIKit

// Simpson's Rule - Approximate Integration. Swift.

func simpson(_ n: Int) -> Double {
    let h: Double = Double.pi / Double(n)
    var sums: Double = 0.0
    for i in 1...(n / 2) { sums += 6.0 * pow(sin((2.0 * Double(i) - 1) * h), 3.0) }
    for i in 1...(n / 2 - 1) { sums += 3.0 * pow(sin(2.0 * Double(i) * h), 3.0) }
    return h * sums / 3.0
}
