import UIKit

// Phone Directory

func phone(_ strng: String, _ num: String) -> String {
    let matchedEntries = strng.split(separator: "\n").map { String($0) }.filter { $0.contains(num) }
    
    guard let matchedEntry = matchedEntries.first else { return "Error => Not found: \(num)" }
    guard matchedEntries.count == 1 else { return "Error => Too many people: \(num)" }
    
    let nameRange = matchedEntry.range(of: "<(.*?)>", options: .regularExpression)!
    let name = String(matchedEntry[nameRange])
        .replacingOccurrences(of: "[<>]", with: "", options: .regularExpression)
        .trimmingCharacters(in: .whitespacesAndNewlines)
    
    let addr: String = matchedEntry
      .replacingOccurrences(of: "[_!@#$%^&*,/?;:<>+]|\(num)|\(name)", with: " ", options: .regularExpression)
      .replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
      .trimmingCharacters(in: .whitespacesAndNewlines)

    return "Phone => \(num), Name => \(name), Address => \(addr)"
}
