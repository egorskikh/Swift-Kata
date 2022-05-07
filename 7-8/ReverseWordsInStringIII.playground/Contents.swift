import UIKit

// Reverse Words in a String III. Swift.

/*
 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 
 Input: s = "God Ding"
 Output: "doG gniD"
 */

func reverseWords(_ s: String) -> String {
    s
        .components(separatedBy: " ")
        .map { String($0.reversed()) }
        .joined(separator: " ")
}


reverseWords("God Ding")
