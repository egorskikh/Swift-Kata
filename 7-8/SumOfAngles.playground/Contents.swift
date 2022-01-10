import UIKit

/*
 Sum of angles. Swift.
 
 Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.
 */
func angle(_ n: Int) -> Int {
    return n < 3 ? 0 : (n - 2) * 180
}
