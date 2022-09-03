import UIKit

// Sorting on planet Twisted-3-7

func sortTwisted37(_ arr: [Int]) -> [Int] {
  func replace3with7(_ arr: [Int]) -> [Int]  {
    return arr.map {
      let string = "\($0)"
      return Int(String(string.characters.map {
        $0 == "3" ? "7" : $0 == "7" ? "3" : $0
      }))!
    }
  }
  return replace3with7(replace3with7(arr).sorted())
}
