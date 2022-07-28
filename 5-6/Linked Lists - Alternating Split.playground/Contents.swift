import UIKit

// Linked Lists - Alternating Split

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

enum ListError: Error {
    case Empty
}

func add(element: Node?, toNext: Node?, next: Node?) {
    if let element = element  {
        toNext?.next = Node(element.data)
    }
    if element?.next != nil {
        add(element: element?.next, toNext: next, next: toNext?.next)
    }
}

func alternatingSplit(head:Node?) throws -> Context? {
    if head?.next == nil { throw ListError.Empty }
    var context = Context()
    context.source = Node((head?.data)!)
    context.dest = Node((head?.next?.data)!)
    add(element: head?.next?.next, toNext: context.source, next: context.dest)
    return context
}
