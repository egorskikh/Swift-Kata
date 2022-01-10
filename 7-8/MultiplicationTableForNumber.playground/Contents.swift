import UIKit

/*
 Multiplication table for number. Swift.
 
 Your goal is to return multiplication table for number that is always an integer from 1 to 10.
 */

func multi_table(_ number: Int) -> String {
    (1...10).map {"\($0) * \(number) = \($0 * number)"}.joined(separator: "\n")
}
