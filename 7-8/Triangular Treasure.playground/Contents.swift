import UIKit

// Triangular Treasure. Swift.

func triangular(_ n: Int) -> Int {
    return n > 0 ? (1...n).reduce(0,+) : 0
}
