import UIKit

// Find Target Indices After Sorting Array. Swift.

func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
    let sortedArray = nums.sorted()
    var resultArray = [Int]()
    
    for (i, e) in sortedArray.enumerated() {
        if e == target { resultArray.append(i) }
    }
    
    return resultArray
}
