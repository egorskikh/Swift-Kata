import UIKit

/*
 Convert number to reversed array of digits. Swift

 Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
 */

func digitize(_ num: Int) -> [Int] {
  String(num).compactMap{ $0.wholeNumberValue }.reversed()
}
