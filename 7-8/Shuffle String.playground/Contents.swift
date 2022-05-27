import UIKit

// Shuffle String. Swift.

/*
 Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
 Output: "leetcode"
 
 Input: s = "abc", indices = [0,1,2]
 Output: "abc"
 */

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var firstArray = Array(s)
    let secondArray = Array(s)
    
    for (index , item) in indices.enumerated() {
        firstArray[item] = secondArray[index]
    }
    
    return String(firstArray)
}

restoreString("codeleet", [4,5,6,7,0,2,1,3])
