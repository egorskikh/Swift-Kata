import UIKit

// Sum of Minimums! Swift

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
    return numbers.reduce(0, {x, y in x + (y.min() ?? 0)})
}


