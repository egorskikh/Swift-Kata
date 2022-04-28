import UIKit

// Palindrome Number. Swift.

// 121 - true
// 121- - false
// 10 - false

func isPalindrome(_ x: Int) -> Bool {
    String(x) == String(String(x).reversed())
}


isPalindrome(121) // true
isPalindrome(-121) // false
isPalindrome(10) // false
