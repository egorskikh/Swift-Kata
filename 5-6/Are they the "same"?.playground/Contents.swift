import UIKit

// Are they the "same"? Swift.

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    return a.map{ $0 * $0 }.sorted() == b.sorted()
}
