import UIKit

// Count Items Matching a Rule. Swift.

/*
 Input: items = [["phone","blue","pixel"],
                 ["computer","silver","lenovo"],
                 ["phone","gold","iphone"]],
                ruleKey = "color",
                ruleValue = "silver"
 Output: 1
 
 Input: items = [["phone","blue","pixel"],
                 ["computer","silver","phone"],
                 ["phone","gold","iphone"]],
                ruleKey = "type",
                ruleValue = "phone"
 Output: 2
 */

func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    
    let foundKey = findKeyNumber(ruleKey)!
    var result = 0
    
    for i in items {
        if i[foundKey] == ruleValue { result += 1 }
    }
    
    
    return result
}

private func findKeyNumber(_ s: String) -> Int? {
    switch s {
    case "type": return 0
    case "color": return 1
    case "name": return 2
    default: return nil
    }
}

countMatches([["phone","blue","pixel"],
              ["computer","silver","phone"],
              ["phone","gold","iphone"]],
             "type",
             "phone"
)
