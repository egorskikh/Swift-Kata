import UIKit

// Maximum Number of Words Found in Sentences. Swift.

func mostWordsFound(_ sentences: [String]) -> Int {
    var result = 0
    
    for i in sentences {
        let count = i.split(separator: " ").count
        if count > result { result = count }
    }
    
    return result
}
