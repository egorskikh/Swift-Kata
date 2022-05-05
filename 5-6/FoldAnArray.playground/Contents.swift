import UIKit

// Fold an array. Swift.

func foldArray(_ arr: [Int], times: Int) -> [Int] {
    if times == 0 { return arr }
    let tail = arr.suffix(arr.count/2).reversed() + [0]
    let head = arr.prefix((arr.count+1)/2)
    let arrBack = zip(head, tail).compactMap { $0.0 + $0.1 }
    return foldArray(arrBack, times: times-1)
}
