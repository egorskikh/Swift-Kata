import UIKit

// Billiards triangle. Swift.

func pyramid(_ balls: Int) -> Int {
    var b = balls, n = 0
    while b > 0 {
        n += 1
        b = b - n
    }
    return b == 0 ? n : n - 1
}
