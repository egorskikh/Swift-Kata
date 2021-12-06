import UIKit

/*
 Binary Search. Swift.
*/

var intArray = [1,4,5,2,3,7,6,9,8,10,12,11]
var intArraySort = intArray.sorted(by: <)

// O(log n)
func binarySearch(array: [Int], n: Int) -> Int? {

    var lowIndex = 0
    var highIndex = array.count - 1
    
    while (true) {
        let midIndex = ( lowIndex + highIndex ) / 2
        
        if array[midIndex] == n {
            return midIndex
        } else if lowIndex > highIndex {
            return nil
        } else {
            if array[midIndex] > n {
                highIndex = midIndex - 1
            } else {
                lowIndex = midIndex + 1
            }
            
        }
    }
    
    
}

binarySearch(array: intArraySort, n: 1) // 3


