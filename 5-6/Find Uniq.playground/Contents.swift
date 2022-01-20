import UIKit

// Find the unique number. Swift.

func findUniq(_ arr: [Double]) -> Double {
    Set(arr).filter {
        arr.firstIndex(of: $0) == arr.lastIndex(of: $0)
    }.first!
}
