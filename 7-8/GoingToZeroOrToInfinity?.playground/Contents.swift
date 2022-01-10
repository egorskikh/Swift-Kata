import UIKit

/*
 Going to zero or to infinity? Swift.
 
 Consider the following numbers (where n! is factorial(n)):

 u1 = (1 / 1!) * (1!)
 u2 = (1 / 2!) * (1! + 2!)
 u3 = (1 / 3!) * (1! + 2! + 3!)
 ...
 un = (1 / n!) * (1! + 2! + 3! + ... + n!)
 Which will win: 1 / n! or (1! + 2! + 3! + ... + n!)?

 Are these numbers going to 0 because of 1/n! or to infinity due to the sum of factorials or to another number?

 Task
 Calculate (1 / n!) * (1! + 2! + 3! + ... + n!) for a given n, where n is an integer greater or equal to 1.

 To avoid discussions about rounding, return the result truncated to 6 decimal places.
 */

func going(_ n: Int) -> Double {
    var res: Double = 1.0
    var inter: Double = 1.0
    var i: Int = n
    
    while i >= 2 {
        inter = inter * (1.0 / Double(i))
        res += inter
        i -= 1
    }
    
    return floor(res * 1e6) / 1e6;
}
