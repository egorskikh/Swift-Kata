import UIKit

// CamelCase Method

func camelCase(_ str: String) -> String {
    str.capitalized.replacingOccurrences(of: " ", with: "")
}
