import UIKit

// Counting in the Amazon. Swift.

func countArare(_ n: Int) -> String {
    guard n > 0 else {return ""}
    var pairs = Array(repeating: "adak", count: n/2)
    if n % 2 == 1 {pairs.append("anane")}
    return pairs.joined(separator: " ")
}
