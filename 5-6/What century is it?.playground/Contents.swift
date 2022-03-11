import Foundation

// What century is it? Swift.

func whatCentury(_ year: String) -> String {
    return NumberFormatter.localizedString(
      from: NSNumber(value: ceil(Double(year)!/100)),
      number: .ordinal)
}
