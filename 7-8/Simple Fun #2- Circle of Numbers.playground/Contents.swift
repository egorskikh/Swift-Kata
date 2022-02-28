import UIKit

// Simple Fun #2: Circle of Numbers. Swift.

func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
    return (fst + n / 2) % n
}
