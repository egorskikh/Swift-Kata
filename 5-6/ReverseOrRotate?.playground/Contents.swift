import UIKit

// Reverse or rotate? Swift.

func revRot(_ s: String, _ c: Int) -> String {
    guard c > 0, c <= s.count else { return "" }
    
    return stride(from: 0, to: s.count - s.count % c, by: c).map {
        let start = s.index(s.startIndex, offsetBy: $0)
        let end = s.index(start, offsetBy: c)
        let part = String(s[start..<end])
        
        return part.compactMap({ Int(String($0)) }).reduce(0, +) % 2 == 0 ? String(part.reversed()) : part.dropFirst() + String(part.first!)
    }.joined()
}
