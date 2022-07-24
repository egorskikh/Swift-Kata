import UIKit

// Factorial decomposition. Swift.

func decomp(_ m: Int) -> String {
  return (1...m).reduce(into: Array(repeating: 0, count: m + 1)) { arr, num in
      var i = 2, num = num
      
      while num > 0 && i <= num {
        if num % i != 0 {
            i += 1
        } else {
            arr[i] += 1
            num /= i
        }
      }
      
    }.enumerated()
     .filter { $1 != 0 }
     .map { $1 == 1 ? "\($0)" : "\($0)^\($1)" }
     .joined(separator: " * ")
}
