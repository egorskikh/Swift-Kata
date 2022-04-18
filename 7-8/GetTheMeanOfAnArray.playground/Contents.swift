import UIKit

// Sort Array By Parity. Swift.

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    let oddArray = nums.filter ({ $0.isMultiple(of: 2)})
    let evenArray = nums.filter ({ !$0.isMultiple(of: 2)})
    return oddArray + evenArray
}
