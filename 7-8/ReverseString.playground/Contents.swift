import UIKit

// Reverse String. Swift.

/*
 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 */

func reverseString(_ s: inout [Character]) {
    var start = 0
    var end = s.count - 1
    
    while start < end {
        let element = s[start]
        s[start] = s[end]
        s[end] = element
        
        start += 1
        end -= 1
    }
}

var firstExample: [Character] = ["h","e","l","l","o"]
var secondExample: [Character] = ["H","a","n","n","a","h"]
reverseString(&secondExample)
