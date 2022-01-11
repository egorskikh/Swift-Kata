import UIKit

// Sum of integers in string. Swift.

func sumOfIntegersInString(_ string: String) -> Int {
    return string.components(separatedBy: CharacterSet.decimalDigits.inverted)
        .compactMap({ Int($0) })
        .reduce(0, +)
}

sumOfIntegersInString("12.4") // 16
