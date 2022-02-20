import UIKit

// Linked Lists - Move Node In-place. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum MoveError: Error {
    case empty
}

func moveNodeInPlace(_ source:inout Node?, _ dest: inout Node?) throws {
    guard let lhs = source, let rhs = dest else {
        throw MoveError.empty
    }
    dest = push(rhs, lhs.data)
    source = lhs.next
}
