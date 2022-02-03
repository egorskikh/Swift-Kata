import UIKit

// Moduli number system. Swift.

func fromNb2Str(_ n: Int, _ sys: [Int]) -> String {
    
  func gcd(_ x: Int, _ y: Int) -> Int {
    return y == 0 ? x : gcd(y, x % y)
  }
    
  let p = sys.reduce(1, { $0 * $1 })
  let q = sys.reduce(1, { ($0 * $1) / gcd($0, $1) })
  if p < n || p != q {
    return "Not applicable"
  } else {
    return sys
          .map { String(format:"-%d-", n % $0) }
          .joined(separator: "")
  }
}
