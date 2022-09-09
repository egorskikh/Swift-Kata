import UIKit

// Linked Lists - Insert Nth Node

enum InsertNthError: Error {
  case outOfRange
}

func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
  if index == 0 {
    let node = Node(data)
    node.next = head
    return node
  }
  
  guard let node = head else { throw InsertNthError.outOfRange }
  node.next = try insertNth(node.next, index - 1, data)
  return node
}
