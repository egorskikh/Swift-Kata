import UIKit

// Valid Braces. Swift.

func validBraces(_ string: String) -> Bool {
    let str = string
        .replacingOccurrences(of: " ", with: "")
        .replacingOccurrences(of: "{}", with: "")
        .replacingOccurrences(of: "[]", with: "")
        .replacingOccurrences(of: "()", with: "")
    switch str {
    case "": return true
    case string: return false
    default: return validBraces(str)
    }
}
