import UIKit

// English beggars. Swift.

func beggars(_ values: [Int], _ n: Int) -> [Int] {
  guard n > 0 else { return [] }
  var chunks = Array(repeating: 0, count: n)
  values.enumerated().forEach { index, value in
    chunks[index % n] += value
  }
  return chunks
}
