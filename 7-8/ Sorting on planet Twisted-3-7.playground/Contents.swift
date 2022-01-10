import UIKit

// Sorting on planet Twisted-3-7

/*
 [1,2,3,4,5,6,7,8,9] -> [1,2,7,4,5,6,3,8,9]
 [12,13,14] -> [12,14,13]
 [9,2,4,7,3] -> [2,7,4,3,9]
 */

func sortTwisted37(_ arr: [Int]) -> [Int] {
    let sortedArrayAsString = arr.sorted(by: <).map { $0.description }
    print(sortedArrayAsString)
    var returnArray = [Int]()
    
    for i in sortedArrayAsString {
        for z in i {
            if z == "3" {
                returnArray.append(7)
            } else if z == "7" {
                returnArray.append(3)
            } else {
                returnArray.append(Int(z)!)
            }
        }
    }
    
    
    
    return [2]
}

sortTwisted37([9,2,4,7,3])



