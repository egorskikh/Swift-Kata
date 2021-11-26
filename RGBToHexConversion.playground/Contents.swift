import UIKit

/*
RGB To Hex Conversion. Swift.

 The rgb function is incomplete. Complete it so that passing in RGB
 decimal values will result in a hexadecimal representation being returned.
 Valid decimal values for RGB are 0 - 255. Any values that fall out of that
 range must be rounded to the closest valid value.

 Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

*/

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    return [r,g,b]
        .map { max(min($0,255),0) }
        .map { String.init(format: "%02X", $0) }
        .joined()
}
