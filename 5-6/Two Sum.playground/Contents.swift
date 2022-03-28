import UIKit

// Two Sum. Swift.

class Solution {
    
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        
        var returnArray = [Int]()
        
        for i in 0..<(numbers.count-1) {
            for j in (i+1)..<numbers.count {
                if numbers[i] + numbers[j] == target {
                    returnArray = [i,j]
                }
            }
        }
        
        return returnArray
    }
    
}
