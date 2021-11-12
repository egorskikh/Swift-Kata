import UIKit

/*
 Swift.

 Write a method that will search an array of strings for all strings that contain another string,
 ignoring capitalization. Then return an array of the found strings.

 The method takes two parameters, the query string and the array of strings to search, and returns an array.
 */

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let array = arr.filter { $0.lowercased().range(of: str.lowercased()) != nil }
    return array.isEmpty ? ["Empty"] : array
}
