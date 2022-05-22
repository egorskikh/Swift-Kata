import UIKit

// Number of Good Pairs. Swift.

/*
 Input: nums = [1,2,3,1,1,3]
 Output: 4
 
 Input: nums = [1,1,1,1]
 Output: 6
 
 Input: nums = [1,2,3]
 Output: 0
 */

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var counter = 0
    
    for (index, element) in nums.enumerated() {
        
        for (index2, element2) in nums.enumerated() {
            if index2 <= index { continue }
            if element == element2 { counter += 1 }
        }
        
    }
    
    return counter
}

numIdenticalPairs([1,2,3,1,1,3])
