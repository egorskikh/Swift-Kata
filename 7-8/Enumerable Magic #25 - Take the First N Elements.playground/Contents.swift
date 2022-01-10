import UIKit

/* Enumerable Magic #25 - Take the First N Elements. Swift.*/

func take(_ arr: [Int], _ n: Int) -> [Int] {
    return Array(arr.prefix(n))
}
