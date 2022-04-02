import UIKit

// Merge Sorted Array. Swift.

var one = [1,2,3,0,0,0]
var two = [2,5,6]

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    let firstArray = Array(nums1.prefix(m))
    let secondArray = Array(nums2.prefix(n))
    
    nums1 = (firstArray + secondArray).sorted()
}

merge(&one, 3, two, 3) // [1, 2, 2, 3, 5, 6]
