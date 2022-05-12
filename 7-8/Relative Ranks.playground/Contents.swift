import UIKit

// Relative Ranks. Swift.

/*
 Input: score = [5,4,3,2,1]
 Output: ["Gold Medal","Silver Medal","Bronze Medal","4","5"]
 
 Input: score = [10,3,8,9,4]
 Output: ["Gold Medal","5","Bronze Medal","Silver Medal","4"]
 */

func findRelativeRanks(_ score: [Int]) -> [String] {
    var returnArray: [String] = []
    
    let sortedArray = score.sorted(by: >)
    
    for i in score {
        let index = sortedArray.firstIndex(of: i)!
        
        switch index {
        case 0: returnArray.append("Gold Medal"); continue
        case 1: returnArray.append("Silver Medal"); continue
        case 2: returnArray.append("Bronze Medal"); continue
        default: returnArray.append(String(index + 1))
        }
        
    }
    
    return returnArray
}

findRelativeRanks([10,3,8,9,4])
