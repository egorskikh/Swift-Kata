import UIKit

// Linked Lists - Length & Count. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func length(_ head: Node?) -> Int {
    guard let node = head else {
        return 0
    }
    return length(node.next) + 1
}

func count(_ head: Node?, _ data: Int) -> Int {
    guard let node = head else {
        return 0
    }
    return count(node.next, data) + (node.data == data ? 1 : 0)
}
