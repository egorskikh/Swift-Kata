import UIKit

// Bouncing Balls. Swift.

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    guard h > 0 && bounce > 0 && bounce < 1 && window < h else {return -1}
   
    var views = 1
    var height = h * bounce
    
    while height > window {
      views += 2
      height *= bounce
    }
    
    return views
}
