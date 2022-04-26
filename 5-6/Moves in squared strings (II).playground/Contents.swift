import UIKit

// Moves in squared strings (II). Swift.

func rot(_ s: String) -> String {
    return String(s.characters.reversed())
}

func selfieAndRot(_ s: String) -> String {
    let aa = s.characters
        .split(separator: "\n")
        .map(String.init)
        .map( { (s: String) -> String in
            return s + String(repeating: ".", count: s.characters.count)
        }
        )
    let bb = rot(s).characters
        .split(separator: "\n")
        .map(String.init)
        .map( { (s: String) -> String in
            return String(repeating: ".", count: s.characters.count) + s
        }
        )
    return (aa + bb).joined(separator: "\n")
}

func oper(_ fcn: (String) -> String, _ s: String) -> String {
    return fcn(s)
}
