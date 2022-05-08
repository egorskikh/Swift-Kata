import UIKit

// Projectile Motion. Swift.

class Projectile {
    
    var h = Double()
    var v0 = Double()
    var a = Double()
    
    init(h: Int,v0: Int,a: Int) {
        self.h = Double(h)
        self.v0 = Double(v0)
        self.a = Double(a)
    }
    
    func heightEq() -> String {
        var returnString = "h(t) = \(-32.0/2)t^2 + \(Double(round(1000*(sin(a * Double.pi / 180)*v0))/1000))t"
        if h != 0.0 {
            returnString += " + \(h)"
        }
        return returnString
    }
    
    func horizEq() -> String {
        return "x(t) = \(Double(round(1000*(cos(a * Double.pi / 180)*v0))/1000))t"
    }
    
    func height(time: Double) -> Double {
        return round(1000*(((-32.0/2)*(time*time)) + ((sin(a * Double.pi / 180)*v0)*time) + h))/1000
    }
    
    func horiz(time: Double) -> Double {
        return (round(1000*(cos(a * Double.pi / 180)*v0)*time)/1000)
    }
    
    func landing() -> [Double]{
        let quadSol = (((sin(a * Double.pi / 180)*v0*(-1))-sqrt(((sin(a * Double.pi / 180)*v0)*(sin(a * Double.pi / 180)*v0))-4*(-32.0/2)*(h)))/(-32.0))
        return [horiz(time:quadSol),0.0,Double(round(1000*quadSol)/1000)]
    }
    
}
