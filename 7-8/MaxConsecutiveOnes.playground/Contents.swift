import UIKit

// Max Consecutive Ones. Swift.

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var result = 0
    var counter = 0
    
    for num in nums {
        counter += (num == 1) ? num : 0
        counter = (num == 0) ? 0 : counter
        result = (counter < result) ? result : counter
    }
    
    return result
}



