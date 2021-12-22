import UIKit

let intArray = [1,2,3,4,5]

func recursionSumIntArray(_ array: [Int]) -> Int {
    guard !array.isEmpty else { return 0 }
    return array.first! + recursionSumIntArray(Array(array.dropFirst()))
}

let result = recursionSumIntArray(intArray)
print(result)
