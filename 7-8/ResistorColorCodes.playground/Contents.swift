import UIKit

// Resistor Color Codes. Swift.

func decodeResistorColors(_ bands: String) -> String {
    let colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white"]
    let tolerances = ["gold": 5, "silver": 10]
    let names = bands.components(separatedBy: " ")
    let digits = names.compactMap(colors.firstIndex)
    let ohms = Double((digits[0] * 10 + digits[1]) * Array(repeating: 10, count: digits[2]).reduce(1, *))
    let tolerance = (names.count == 4 ? tolerances[names[3]] : nil) ?? 20
    let (divisor, suffix) = ohms > 999999 ? (1_000_000, "M") : ohms > 999 ? (1_000, "k") : (1, "")
    let ohmsRounded = String(format: "%.1f", ohms / Double(divisor)).replacingOccurrences(of: ".0", with: "")
    return "\(ohmsRounded)\(suffix) ohms, \(tolerance)%"
}
