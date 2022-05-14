import UIKit

// Intersection of Two Array. Swift.

/*
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]
 */

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(Set(nums2)))
}

intersection([1,2,2,1], [2,2])
