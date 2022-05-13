import UIKit

// Valid Anagram. Swift.

/*
 Input: s = "anagram", t = "nagaram"
 Output: true
 
 Input: s = "rat", t = "car"
 Output: false
 
 Input: "aacc" "ccac"
 Output: false
 */

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    var hashDict = [Character: Int]()
    
    for char in s {
        hashDict[char, default: 0] += 1
    }
    
    for char in t {
        hashDict[char] = hashDict[char, default: 0] - 1
    }
    
    for (_, count) in hashDict {
        if count != 0 {
            return false
        }
    }
    
    return true
}

isAnagram("anagram", "nagaram")
isAnagram("rat", "car")
isAnagram("aacc", "ccac")
