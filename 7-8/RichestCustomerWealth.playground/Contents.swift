import UIKit

//  Richest Customer Wealth. Swift.

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var resultArray: [Int] = []
    
    for i in accounts {
        var result = i.reduce(0) { $0 + $1 }
        resultArray.append(result)
    }
    
    return resultArray.max()!
}

maximumWealth([[1,5],[7,3],[3,5]])
