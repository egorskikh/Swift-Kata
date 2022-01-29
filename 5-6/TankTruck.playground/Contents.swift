import UIKit

// Tank Truck. Swift.

func tankVol(_ h: Int, _ d: Int, _ vt: Int) -> Int {
    guard (0..<d).contains(h) else { return vt }
    
    let (h, r, vt) = (Double(h), Double(d) / 2, Double(vt)
    if h == r { return Int(vt / 2) }
    
    let cos = (r - h) / r
    let rad = acos(cos) * 2
    let ratio = (rad - sin(rad)) / 2 / Double.pi
                      
    return Int(vt * ratio)
}
