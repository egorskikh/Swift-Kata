import UIKit

// Which are in?. Swift.

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    return Set(a1.filter { s1 in a2.contains { $0.contains(s1) } }).sorted()
}
