import UIKit

// Convert A Hex String To RGB. Swift.

struct RGB: CustomStringConvertible, Equatable {
    var r: Int
    var g: Int
    var b: Int
    
    var description: String {
        return "{R:\(r), G:\(g), B:\(b)}"
    }
    
    init(_ r:Int, _ g:Int, _ b:Int) {
        self.r = r
        self.g = g
        self.b = b
    }
    
    static func ==(left:RGB, right:RGB) -> Bool {
        return left.r == right.r && left.g == right.g && left.b == right.b
    }

}

func hexStringToRGB(_ str:String) -> RGB {
    var mutable = str
    
    if mutable.hasPrefix("#") {
        mutable = String(mutable.dropFirst())
    }
    
    let asInt = Int(mutable, radix: 16)!
    let r = (asInt & 0xFF0000) >> 16
    let g = (asInt & 0x00FF00) >> 8
    let b = (asInt & 0x0000FF)
    
    return RGB(r, g, b)
}
