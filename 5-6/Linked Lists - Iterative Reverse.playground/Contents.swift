import UIKit

// Linked Lists - Iterative Reverse. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func reverse(list:inout Node?) {
    var result:Node? = nil
    var node = list
    
    while node != nil {
        result = push(result,node!.data)
        node = node?.next
    }
    
    list = result
}
