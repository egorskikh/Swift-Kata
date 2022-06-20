import UIKit

// Find the missing term in an Arithmetic Progression. Swift.

func find_missing(l:[Int]) -> Int {
    let sum = l.reduce(0, +)
    return (l[0] + l[l.count-1]) * (l.count + 1) / 2 - sum
}
