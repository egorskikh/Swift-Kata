import UIKit

/*
 Swift.

 Given a non-empty array of integers, return the result of multiplying the values together in order.
 */

func grow(_ arr: [Int]) -> Int {
    arr.reduce(1, *)
}
