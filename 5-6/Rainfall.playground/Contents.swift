import UIKit

// Rainfall. Swift.

func mean(_ d : String, _ town: String) -> Double {
    if let rainfalls = parse(data: d, for: town) {
        return rainfalls
            .reduce(into: 0.0, +=) / Double(rainfalls.count)
    }
    
    return -1
}
func variance(_ d : String, _ town: String) -> Double {
    let average = mean(d, town)
    if average != -1, let rainfalls = parse(data: d, for: town) {
        return rainfalls
            .map({ pow($0 - average, 2) })
            .reduce(into: 0.0, +=) / Double(rainfalls.count)
    }
    
    return -1
}

func parse(data: String, for town: String) -> [Double]? {
    if let line = data.split(separator: "\n").first(where: { $0.hasPrefix(town) }) {
        return line
            .split(separator: ",")
            .map( { Double($0.components(separatedBy: " ")[1])! })
    }
    return nil
}
