import UIKit

// Write Number in Expanded Form. Swift.

func expandedForm(_ num: Int) -> String {
    let digits = String(num).characters
    let maxZeros = digits.count - 1
    
    let parts = digits
        .enumerated()
        .filter { $0.element != "0" }
        .map { String($0.element) + String(repeating: "0", count: maxZeros - $0.offset) }
    
    return parts.joined(separator: " + ")
}
