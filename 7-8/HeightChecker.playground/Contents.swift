import UIKit

// Height Checker. Swift

func heightChecker(_ heights: [Int]) -> Int {
    let sortedArray = heights.sorted(by: <)
    var counter = 0
    
    for (index, item) in heights.enumerated() {
        if item != sortedArray[index] { counter += 1 }
    }
    
    return counter
}
