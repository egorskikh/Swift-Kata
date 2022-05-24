import UIKit

// Kids With the Greatest Number of Candies. Swift.

/*
 Input: candies = [2,3,5,1,3], extraCandies = 3
 Output: [true,true,true,false,true]
 
 Input: candies = [4,2,1,1,2], extraCandies = 1
 Output: [true,false,false,false,false]
 
 Input: candies = [12,1,12], extraCandies = 10
 Output: [true,false,true]
 */

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var max = 0
    var output : [Bool] = []
    for index in 0..<candies.count {
        if candies[index] > max {
            max = candies[index]
        }
    }
    
    for index in 0..<candies.count {
        if candies[index] + extraCandies >= max {
            output.append(true)
        }
        else {
            output.append(false)
        }
    }
    return output
}

kidsWithCandies([2,3,5,1,3], 3)  //  [2,3,5,1,3] 3 [true,true,true,false,true]
kidsWithCandies([4,2,1,1,2], 1) // [4,2,1,1,2] 1 [true,false,false,false,false]
kidsWithCandies([12,1,12], 10) // [12,1,12] 10 [true,false,true]
