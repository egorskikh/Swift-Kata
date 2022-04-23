import UIKit

// SquaresOfSortedArray. Swift.
// O(n2) -> O(n)

func sortedSquares(_ nums: [Int]) -> [Int] {
    return nums.map { $0 < 0 ? -$0 * -$0 : $0 * $0 }.sorted(by: <)
}

