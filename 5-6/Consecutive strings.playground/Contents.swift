import UIKit

// Consecutive strings. Swift.

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    var longest: String = ""
    let n = strarr.count
    if n == 0 || k > n || k <= 0 {return longest}
    for i in 0..<(n - k + 1) {
        let str: String = strarr[i..<i + k].joined(separator: "")
        if str.characters.count > longest.characters.count {longest = str}
    }
    return longest
}
