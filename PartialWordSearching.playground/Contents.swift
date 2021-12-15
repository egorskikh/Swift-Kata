import UIKit

/*
 Partial Word Searching. Swift.
 */

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let results = arr.filter { $0.localizedCaseInsensitiveContains(str) }
    return results.isEmpty ? ["Empty"] : results
}

