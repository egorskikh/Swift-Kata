import UIKit

// Calculate the area of a regular n sides polygon inside a circle of radius r

func areaOfPolygonInsideCircle(_ r: Double, _ n: Int) -> Double {
  return (1e3 * (0.5 * Double(n) * r * r * sin(2 * Double.pi / Double(n)))).rounded() / 1e3
}
