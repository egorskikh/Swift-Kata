import UIKit

// Coding with Squared Strings

func code(_ s: String) -> String {
  let n = Int(Double(s.count).squareRoot().rounded(.up))

  var filled = s
    
  while filled.count < n * n {
    filled += "÷"
  }
  
  var res = Array(repeating: "", count: n)
  
  filled
    .enumerated()
    .map { ($0, "\($1)") }
    .forEach {
      res[$0 % n] = $1 + res[$0 % n]
    }
  
  return res.joined(separator: "\n")
}

func decode(_ s: String) -> String {
  guard !s.isEmpty else { return "" }
  
  let lines = s
    .components(separatedBy: "\n")
    .map {
      $0.map { "\($0)" }
    }
  
  let n = lines.count
  
  var res = ""
  
  for char in (0..<n).reversed() {
    for line in 0..<n {
      guard lines[line][char] != "÷" else { continue }
      res += lines[line][char]
    }
  }
  
  return res
}
