import UIKit

/*
 Simple multiplication. Swift.
 
 This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.
 */

func simpleMultiplication(_ num: Int) -> Int {
    return num % 2 == 1 ? (num * 9) : (num * 8)
}
