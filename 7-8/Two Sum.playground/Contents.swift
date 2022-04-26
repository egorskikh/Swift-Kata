import UIKit

// Two Sum. Swift

/*
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Input: nums = [3,3], target = 6
 Output: [0,1]

 */


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var returnArray: [Int] = []

    for (index, element) in nums.enumerated() {
    
        for (i, e) in nums.enumerated() {
            if (e + element == target) && (index != i) {
                returnArray = [i, index]
            }
        }
    
    }

    return returnArray
}

twoSum([2,7,11,15], 9)
