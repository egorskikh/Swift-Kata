import UIKit

// Add Digits. Swift.

/*
 Input: num = 38
 Output: 2
 */

func addDigits(_ num: Int) -> Int {
    (num == 0) ? 0 : (num % 9 == 0) ? 9 : (num % 9)
}
addDigits(15)
