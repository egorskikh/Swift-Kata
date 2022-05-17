import UIKit

// Majority Element. Swift.

func majorityElement(_ nums: [Int]) -> Int {
    let sortedArray = nums.sorted()
    return sortedArray[nums.count / 2]
}
