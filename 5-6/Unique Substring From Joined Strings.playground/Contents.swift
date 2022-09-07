import UIKit

// Unique Substring From Joined Strings

func longestSubstring(_ a: String, _ b: String) -> Int {
    let commonSet = CharacterSet(charactersIn: a).intersection(CharacterSet(charactersIn: b))
    let longestAB = (a+b).components(separatedBy: commonSet).max(by: {$1.count > $0.count})?.count ?? 0
    let longestBA = (b+a).components(separatedBy: commonSet).max(by: {$1.count > $0.count})?.count ?? 0
    
    return max(longestAB, longestBA)
}
