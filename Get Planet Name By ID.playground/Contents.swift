import UIKit

// Get Planet Name By ID. Swift.

func getPlanetName(_ id: Int) -> String {
  return ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune" ][id - 1]
}
