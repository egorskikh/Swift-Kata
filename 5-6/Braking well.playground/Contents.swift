import UIKit

// Braking well. Swift.

func dist(_ v: Double, _ mu: Double) -> Double {
    return ((v * v) / (mu * 254.2752)) + (v / 3.6)
}

func speed(_ d: Double, _ mu: Double) -> Double {
    let b = 2 * mu * 9.81
    return ((-b) + sqrt(b * b + 4 * d * b)) * 3.6 / 2
}
