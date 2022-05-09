import UIKit

// Valid Parentheses. Swift.


struct Stack<Element> {
    
    var storage: [Element] = []
    
    init() {}
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
}

func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0 { return false }
    
    let characters: [Character:Character] = [
        "}": "{",
        ")": "(",
        "]": "["
    ]
    
    var stack = Stack<Character>()
    
    for char in s {
        let c = characters[char]
        
        if c == nil {
            stack.push(char)
        } else {
            if stack.pop() != c { return false }
        }
    }
    
    
    return stack.isEmpty
}

isValid("()") // true
isValid("()[]") // true
isValid("()[](") // false
isValid("{[]}") // true



