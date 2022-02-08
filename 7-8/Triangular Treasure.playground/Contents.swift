import UIKit

// Triangular Treasure. Swift.

func triangular(_ n: Int) -> Int{
    guard n > 0 else { return 0 }
    return n * (1 + n) / 2
}
