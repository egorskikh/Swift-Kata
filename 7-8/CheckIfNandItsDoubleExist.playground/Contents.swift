import UIKit

// Check If N and Its Double Exist. Swift.

func checkIfExist(_ arr: [Int]) -> Bool {
    
    for n in arr {
        let m = 2 * n
        
        for i in arr {
            if (m == i) { return true }
        }
        
    }
    
    return false
}

