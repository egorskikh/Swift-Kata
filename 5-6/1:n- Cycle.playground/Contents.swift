import UIKit

// 1/n- Cycle. Swift.

func cycle(_ n: Int) -> Int {
    if n % 2 == 0 || n % 5 == 0 { return -1 }
    
    var count = 1
    var x = 10
    
    while x != 1 {
        if (x / n) == 0 {
            x *= 10
            count += 1
        } else {
            x = x % n
        }
    }
    
    return count
}
