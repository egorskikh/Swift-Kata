import UIKit

//  Squares of a Sorted Array. Swift.

func sortedSquares(_ nums: [Int]) -> [Int] {
    return nums.map { $0 < 0 ? -$0 * -$0 : $0 * $0 }.sorted(by: <)
}

sortedSquares([-7,-3,2,3,11]) // [4,9,9,49,121]
