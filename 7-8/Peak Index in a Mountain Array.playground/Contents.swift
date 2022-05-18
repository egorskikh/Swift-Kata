import UIKit

// Peak Index in a Mountain Array. Swift.

/*
 Input: arr = [0,10,5,2]
 Output: 1
 */

func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    var first = 0
    var last = arr.count - 1
    var mid = (first + last) / 2
    
    while first < last  {
        if arr[mid] < arr[mid + 1] {
            first = mid + 1
            mid = (first + last) / 2
        } else {
            last = mid
            mid = (first + last) / 2
        }
    }
    
    return mid
}

peakIndexInMountainArray([0,10,5,2])
