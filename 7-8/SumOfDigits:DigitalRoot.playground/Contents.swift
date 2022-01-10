import UIKit

/*
 Sum of Digits / Digital Root. Swift

 Digital root is the recursive sum of all the digits in a number.

 Given n, take the sum of the digits of n. If that value has more than one digit,
 continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
 */

func digitalRoot(of number: Int) -> Int {
    let digit = String(number).compactMap { Int(String($0)) }.reduce(0, +)
    return digit > 9 ? digitalRoot(of: digit) : digit
}
