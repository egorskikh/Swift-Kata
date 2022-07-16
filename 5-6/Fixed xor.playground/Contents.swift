import UIKit

// Fixed xor. Swift.

func fixedXor(_ a: String, _ b: String) -> String {
    return zip(a, b).map { String($0.0.hexDigitValue! ^ $0.1.hexDigitValue!, radix: 16) }.joined()
}
