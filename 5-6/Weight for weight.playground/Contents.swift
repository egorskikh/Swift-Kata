import UIKit

// Weight for weight. Swift.

func orderWeight(_ s: String) -> String {
    return s.components(separatedBy: " ")
        .sorted {
        let lhs = $0
                .compactMap{ Int(String($0)) }
                .reduce(0, +)
            
        let rhs = $1
                .compactMap{ Int(String($0)) }
                .reduce(0, +)
        
        return lhs == rhs ? $0 < $1 : lhs < rhs
    }.joined(separator: " ")
}
