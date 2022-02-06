import UIKit

// Linked Lists - Get Nth Node. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum NewNodeError: Error {
    case invalidArgumentException
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
  guard let currentNode = head, index >= 0 else {
    throw NewNodeError.invalidArgumentException
  }
  return index == 0 ? currentNode : try getNth(currentNode.next, index - 1)
}
