import UIKit

// int32 to IPv4. Swift.

func ipv4(of i32: UInt32) -> String {
    let byte1 = UInt8(i32 & 0xff)
    let byte2 = UInt8((i32>>8) & 0xff)
    let byte3 = UInt8((i32>>16) & 0xff)
    let byte4 = UInt8((i32>>24) & 0xff)
    return "\(byte4).\(byte3).\(byte2).\(byte1)"
}
