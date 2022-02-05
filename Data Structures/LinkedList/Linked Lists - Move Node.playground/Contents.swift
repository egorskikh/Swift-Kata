import UIKit

// Linked Lists - Move Node. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum moveNodeError: Error {
    case sourceListIsEmpty
}

struct Context {
    var source:Node?
    var dest:Node?
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
    guard source != nil else { throw moveNodeError.sourceListIsEmpty }
    return Context(source: source?.next, dest: push(dest, (source?.data)!))
}
