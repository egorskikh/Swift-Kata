import UIKit

// Final Value of Variable After Performing Operations. Swift.

/*
 Input: operations = ["--X","X++","X++"]
 Output: 1
 
 Input: operations = ["++X","++X","X++"]
 Output: 3
 
 Input: operations = ["X++","++X","--X","X--"]
 Output: 0
 */

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var result = 0
    
    for i in operations {
        switch i {
        case "--X", "X--": result -= 1
        case "++X", "X++": result += 1
        default: result += 0
        }
    }
    
    return result
}

finalValueAfterOperations(["++X","++X","X++"])
