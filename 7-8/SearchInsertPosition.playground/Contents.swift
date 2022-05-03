import UIKit

// Search Insert Position. Swift.

// nums = [1,3,5,6], target = 5

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  
    var endIndex = nums.count - 1
    var startIndex = 0
    
    while true {
        let midIndex = (startIndex + endIndex) / 2
        
        if nums[midIndex] == target {
            return midIndex
        } else if endIndex < startIndex {
            return endIndex + 1
        }
        
        if nums[midIndex] > target {
            endIndex = midIndex - 1
        } else {
            startIndex = midIndex + 1
        }
        
    }
    
}

searchInsert([1,3,5,6], 77) // 4
