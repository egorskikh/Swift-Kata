import UIKit

// Duplicate Zeros. Swift.

func duplicateZeros(_ arr: inout [Int]) {
    
    let startCount = arr.count
    var countAddedZero = 0
    
    for (index, item) in arr.enumerated() {
        
        if item == 0 {
            arr.insert(0, at: index + countAddedZero)
            countAddedZero += 1
        }
        
    }
    
    arr = Array(arr.prefix(startCount))
}
