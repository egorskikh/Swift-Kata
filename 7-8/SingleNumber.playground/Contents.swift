import UIKit

// Single Number. Swift.

/*
 Input: nums = [2,2,1]
 Output: 1
 
 Input: nums = [4,1,2,1,2]
 Output: 4
 
 Input: nums = [1]
 Output: 1
 */

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    
    for num in nums {
        result ^= num
    }
    
    return result
}

singleNumber([2,1,2])


