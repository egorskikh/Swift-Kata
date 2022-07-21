import UIKit

// Easy Diagonal. Swift.

func combi(_ n: Int, _ k: Int) -> Int {
    var result = 1
    
    for i in 0..<k {
        result *= (n - i)
        result /= (i + 1)
    }
    return result
}

func diagonal(_ n: Int, _ p: Int) -> Int {
    return combi(n + 1, p + 1)
}
