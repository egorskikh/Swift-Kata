import UIKit

//  Find First Palindromic String in the Array. Swift.

func firstPalindrome(_ words: [String]) -> String {
    for word in words {
        if isPalindrome(word) { return word }
    }
    return ""
}

func isPalindrome(_ s: String) -> Bool {
    let asArray: [Character] = Array(s)
    
    var start = 0
    var end = asArray.count - 1
    
    while start < end {
        if asArray[start] != asArray[end] { return false }
        start += 1
        end -= 1
    }
    
    return true
}



