import UIKit

// Move Zeroes. Swift.

/*
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 */

func moveZeroes(_ nums: inout [Int]) {
    
    if nums == [0] { return }
    
    for element in nums {

        if element == 0 {
            guard let index = nums.firstIndex(of: element) else { break }
            nums.remove(at: index)
            nums.append(element)
        }

    }
    
}

