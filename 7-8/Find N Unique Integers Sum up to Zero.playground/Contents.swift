import UIKit

// Find N Unique Integers Sum up to Zero. Swift.


func sumZero(_ n: Int) -> [Int] {
    var result = Array(repeating: 0, count: n)
    
    var i = 0
    
    while i < n {
        let tmp = 2 * i - n + 1
        result[i] = tmp
        
        i += 1
    }
    
    return result
}
