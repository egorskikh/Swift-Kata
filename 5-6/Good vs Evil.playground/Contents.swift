import UIKit

// Good vs Evil. Swift.

func worth(of string: String, coefficients: [Int]) -> Int {
  let counts = string.components(separatedBy: " ").flatMap { Int($0) }
  return zip(counts, coefficients)
        .map(*)
        .reduce(0, +)
}

func evaluate(good: String, vsEvil evil: String) -> String {
  let goodWorth = worth(of: good, coefficients: [1, 2, 3, 3, 4, 10])
  let evilWorth = worth(of: evil, coefficients: [1, 2, 2, 2, 3, 5, 10])
  
  if goodWorth > evilWorth {
      return "Battle Result: Good triumphs over Evil"
  } else if goodWorth < evilWorth {
      return "Battle Result: Evil eradicates all trace of Good"
  } else {
      return "Battle Result: No victor on this battle field"
  }
}
