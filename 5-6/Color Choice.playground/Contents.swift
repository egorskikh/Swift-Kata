import UIKit

// Color Choice. Swift.

func checkChoose(_ m: Int, _ n: Int) -> Int {
    var result: Int = 1
    for i in 0..<n + 1 {
        if result == m {return i}
        result = result * (n - i) / (i + 1)
    }
    return -1
}
