//: Playground - noun: a place where people can play

import UIKit


public class LinkedListNode<T> {
    var value : T
    var next: LinkedListNode?
    weak var previous : LinkedListNode?
    
    init(value:T) {
        self.value = value
    }
}


public class LinkedList<T>{

    public typealias Node = LinkedListNode<T>

    private var head:Node?
    
    public var isEmpy:Bool {
        return head == nil
    }
    
    public var first:Node?{
        return head
    }
    
    public var last:Node?{
    
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }
    
    public func append(value:T) {
        let newNode = Node(value: value)
        
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        }else {
            head = newNode
        }
    }
    
    public var count:Int {
    
        if head != nil {
            var c = 1
            var node = head
            while case let next? = node?.next {
                node = next
                c = c + 1
            }
            return c
        }else {
            return 0
        }
    }
    
    public func nodeAt(_ index:Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i==0 {
                    return node
                }
                i -= 1
                node = node?.next
            }
        }
        return nil
    }
    
    public func remove(node:Node) -> T {
    
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        }else{
            head = next
        }
        
        next?.previous = prev
        node.previous = nil
        node.next = nil
        return node.value
        
    }
    
    public func removeLast() -> T {
        assert(!isEmpy)
        return remove(node: last!)
    }
    
}


let list = LinkedList<String>()
list.isEmpy
list.first

list.append(value: "Hello")
list.isEmpy
list.first?.value
list.last?.value

list.append(value: "World")
list.first!.value    // "Hello"
list.last!.value     // "World"

list.first!.previous          // nil
list.first!.next!.value       // "World"
list.last!.previous!.value    // "Hello"
list.last!.next               // nil
list.count


list.remove(node: list.first!)
list.count
list.nodeAt(0)
list.nodeAt(1)


