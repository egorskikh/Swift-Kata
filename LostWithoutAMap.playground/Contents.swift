import UIKit

/*
 Swift.

 Given an array of integers, return a new array with each value doubled.
 */

func maps(a: Array<Int>) -> Array<Int> {
    a.map {$0 + $0}
}
