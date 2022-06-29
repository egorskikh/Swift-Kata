import UIKit

// Pyramid Array

func pyramid(_ n: Int) -> [[Int]] {
    return (0..<n).map { Array(repeating: 1, count: $0+1) }
}
