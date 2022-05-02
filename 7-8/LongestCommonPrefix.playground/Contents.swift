import UIKit

// Longest Common Prefix. Swift.

/*
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 
 Input: strs = ["dog","racecar","car"]
 Output: ""
 */


func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 { return "" }
    
    var minStr = (strs.min { $0.count < $1.count })!
    
    for str in strs {
        while !str.hasPrefix(minStr) {
            minStr.removeLast()
        }
    }
    
    return minStr
}
