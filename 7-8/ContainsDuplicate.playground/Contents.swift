import UIKit

// Contains Duplicate. Swift.

func containsDuplicate(_ nums: [Int]) -> Bool {
    let result = nums.count == Set(nums).count
    return !result
}
