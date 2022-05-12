import UIKit

// Defanging an IP Address. Swift.

func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}


