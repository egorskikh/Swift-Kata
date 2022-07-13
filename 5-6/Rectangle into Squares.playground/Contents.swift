import UIKit

// Rectangle into Squares. Swift.

func sqInRect(_ x: Int, _ y: Int) -> [Int]? {
    guard x != y else { return nil }
    let minSide = min(x, y)
    let maxSide = max(x, y)
    return minSide > 0 ? Array([[minSide], sqInRect(maxSide - minSide, minSide) ?? [minSide]].joined()) : []
}
