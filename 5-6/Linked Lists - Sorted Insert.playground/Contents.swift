import UIKit

// Linked Lists - Sorted Insert

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data
    }
}

func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
    guard let current = head, data > head!.data else {
        return push(head, data)
    }
    
    current.next = sortedInsert(current.next, data)
    return current
}
