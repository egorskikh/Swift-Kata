import UIKit

// Numericals of a String

func numericals(_ str: String) -> String {
    var counter: [Character: Int] = [:]
    return str.map {
        counter[$0, default: 0] += 1
        return String(counter[$0]!)
    }.joined()
}
