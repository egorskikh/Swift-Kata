import UIKit

// Basics 08: Find next higher number with same Bits (1's)

func nextHigher(_ n: Int) -> Int {
  return ((n+1)...).first { $0.nonzeroBitCount == n.nonzeroBitCount }!
}
