import UIKit

// How Many Numbers Are Smaller Than the Current Number. Swift.

/*
Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 
 Input: nums = [6,5,4,8]
 Output: [2,1,0,3]
 
 Input: nums = [7,7,7,7]
 Output: [0,0,0,0]
 */

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var dict = [Int: Int]()
    var index = 0
    
    let originalNum = nums
    let nums = nums.sorted()
    
    for num in nums {
        if dict[num] == nil {
            dict[num] = index
        }
        index += 1
    }
    
    var result = [Int]()
    
    for num in originalNum {
        result.append(dict[num]!)
    }
    
    return result
}

smallerNumbersThanCurrent([8,1,2,2,3])
smallerNumbersThanCurrent([6,5,4,8])
smallerNumbersThanCurrent([7,7,7,7])
