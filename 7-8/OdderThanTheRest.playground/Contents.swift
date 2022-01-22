import UIKit

// Odder Than the Rest. Swift.

/*
 oddOne([2,4,6,7,10]) // => 3
 oddOne([2,16,98,10,13,78]) // => 4
 oddOne([4,-8,98,-12,-7,90,100]) // => 4
 oddOne([2,4,6,8]) // => nil
 */

func oddOne(_ arr: [Int]) -> Int? {
    return arr.firstIndex { $0 % 2 != 0 }
}

oddOne([2,4,6,7,10])
