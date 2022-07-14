import UIKit

// Find The Parity Outlier.

func findOutlier(_ array: [Int]) -> Int {
    let odd = array.filter{$0 % 2 != 0}
    return odd.count > 1 ? array.filter{$0 % 2 == 0}[0] : odd[0]
}
