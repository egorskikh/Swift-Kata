import UIKit

// Disarium Number (Special Numbers Series #3). Swift.

func disariumNumber(_ number: Int) -> String {
    let numberArr = String(number).compactMap { Int(String($0)) }
    let ret = numberArr.enumerated().map { (i, n) in Int(pow(Double(n), Double(i + 1))) }.reduce(0, +)
    return ret == number ? "Disarium !!" : "Not !!"
}
