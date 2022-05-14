import UIKit

// Find the Difference. Swift.

func findTheDifference(_ s: String, _ t: String) -> Character {
    var result = UInt8(0)
    for c in s { result ^= c.asciiValue! }
    for c in t { result ^= c.asciiValue! }
    return Character(UnicodeScalar(result))
}

findTheDifference("abcd", "abcde")
findTheDifference("", "e")
findTheDifference("aa", "aaa")
