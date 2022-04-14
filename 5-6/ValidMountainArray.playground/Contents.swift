import UIKit

// Valid Mountain Array. Swift.

func validMountainArray(_ arr: [Int]) -> Bool {
    
    if (arr.count < 3) || (arr[1] < arr[0]) { return false }
    
    var isPassedSlope = false
    var lastItem = arr[0]
    
    for (index, item) in arr.enumerated() {
        if index == 0 { continue }
        
        if (item < lastItem) && (isPassedSlope == false) {
            isPassedSlope = true
        } else if (item > lastItem) && (isPassedSlope == true) {
            return false
        } else if item == lastItem {
            return false
        }
        
        lastItem = arr[index]
    }
    
    return isPassedSlope
}

