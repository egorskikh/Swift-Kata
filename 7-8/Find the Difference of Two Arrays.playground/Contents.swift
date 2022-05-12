import UIKit

// Find the Difference of Two Arrays. Swift

/*
 Input: nums1 = [1,2,3], nums2 = [2,4,6]
 Output: [[1,3],[4,6]]
 
 Input: nums1 = [1,2,3,3], nums2 = [1,1,2,2]
 Output: [[3],[]]
 */

func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    var firstArray: [Int] = []
    var secondArray: [Int] = []
    
    for i in Set(nums1) {
        if !nums2.contains(i) {
            firstArray.append(i)
        }
    }
    
    for i in Set(nums2) {
        if !nums1.contains(i) {
            secondArray.append(i)
        }
    }
    
    return [firstArray, secondArray]
}

findDifference([1,2,3,3], [1,1,2,2])
