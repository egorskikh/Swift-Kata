import UIKit

// Build Array from Permutation. Swift.

func buildArray(_ nums: [Int]) -> [Int] {
    var result = nums
    for i in 0..<nums.count{
        result[i] = nums[nums[i]]
    }
    return result
}

var a = buildArray([0,2,1,5,3,4])
