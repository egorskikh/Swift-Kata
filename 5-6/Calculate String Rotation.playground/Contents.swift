import UIKit

// Calculate String Rotation

func shiftedDiff(_ s1: String, _ s2: String) -> Int? {
    let dubs = s2 + s2
    if let s1r = dubs.range(of: s1) {
        return dubs.distance(from: dubs.startIndex, to: s1r.lowerBound)
    }
    else {
        return nil
    }
}
