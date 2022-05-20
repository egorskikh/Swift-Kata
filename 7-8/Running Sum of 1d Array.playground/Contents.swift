import UIKit

//  Running Sum of 1d Array. Swift.

/*
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 */

func runningSum(_ nums: [Int]) -> [Int] {
    var result = [nums[0]]
    for i in 1..<nums.count {
        result.append(result[i-1]+nums[i])
    }
    return result
}

runningSum([1,2,3,4])
