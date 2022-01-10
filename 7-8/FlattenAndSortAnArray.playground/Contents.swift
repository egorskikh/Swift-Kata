import UIKit

/*
 Swift.

 Given a two-dimensional array of integers, return the flattened version of the array with all the integers
 in the sorted (ascending) order.
 */

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
   arr.flatMap{$0}.sorted(by: { $0 < $1 })
}
