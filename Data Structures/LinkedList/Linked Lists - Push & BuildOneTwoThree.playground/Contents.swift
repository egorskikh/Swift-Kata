import UIKit

// Linked Lists - Push & BuildOneTwoThree. Swift.

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data
    }
    convenience init(_ next: Node?, _ data: Int) {
        self.init(data)
        self.next = next
    }
}

func push(_ head:Node?, _ data:Int) -> Node {
    return Node(head, data)
}

func buildOneTwoThree() -> Node {
    return push(push(push(nil,3),2),1)
}
