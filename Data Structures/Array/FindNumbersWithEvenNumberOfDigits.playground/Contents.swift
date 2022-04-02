import UIKit

// Find Numbers with Even Number of Digits. Swift.

func findNumbers(_ nums: [Int]) -> Int {
    var counter = 0
    nums.map { if String($0).count.isMultiple(of: 2) { counter += 1} }
    
    return counter
}

findNumbers([12,345,2,6,7896]) // 2
