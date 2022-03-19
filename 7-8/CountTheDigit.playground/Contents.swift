import UIKit

// Count the Digit. Swift.

func nbDig(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
}

nbDig(25, 1)
