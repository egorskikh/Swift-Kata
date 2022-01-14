import UIKit

// Linked Lists - Append. Swift.

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data
    }
}

func append(_ listA: Node?, _ listB: Node?) -> Node? {
    guard var node = listA else { return listB }
    while let next = node.next { node = next }
    node.next = listB
    return listA
}
