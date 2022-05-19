import UIKit

//  Shuffle the Array. Swift.

/*
 Input: nums = [2,5,1,3,4,7], n = 3
 Output: [2,3,5,4,1,7]
 
 Input: nums = [1,2,3,4,4,3,2,1], n = 4
 Output: [1,4,2,3,3,2,4,1]
 
 Input: nums = [1,2,3,4], n = 2
 Output: [1,3,2,4]
 */

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var result = [Int]()

    var start = 0
    var end = nums.count - n
    
    while start != n {
        result.append(nums[start])
        result.append(nums[end])
        
        start += 1
        end += 1
    }
    
    return result
}

shuffle([2,5,1,3], 3)
