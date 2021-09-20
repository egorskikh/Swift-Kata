import UIKit

/*
 Swift.

 Return the average of the given array rounded down to its nearest integer.
 */

func getAverage(_ marks: [Int]) -> Int {
  return marks.reduce(0,+) / marks.count
}
