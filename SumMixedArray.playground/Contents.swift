import UIKit

/*
 Sum Mixed Array. Swift.

 Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
 Return your answer as a number.
 */

func sumMix(_ arr: [Any]) -> Int {
    arr.compactMap { $0 as? Int ?? Int($0 as? String ?? "") }.reduce(0, +)
}
