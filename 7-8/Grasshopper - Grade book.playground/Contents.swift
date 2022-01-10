import UIKit

// Grasshopper - Grade book. Swift.

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
  let values = ["A","B","C","D","F"]
  let result = (s1 + s2 + s3) / 3

  switch result {
    case 90...100: return values[0]
    case 80..<90: return values[1]
    case 70..<80: return values[2]
    case 60..<70: return values[3]
    case 0..<60: return values[4]
    
    default: return "error"
  }

}
