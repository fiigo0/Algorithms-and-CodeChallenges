//: Playground - noun: a place where people can play

import UIKit

//Linked list
//https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linked%20List

public class LinkedListNode<T>{
    var value:T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    public init(value:T){
        self.value = value
    }
}

public class LinkedList<T>{
    public typealias Node = LinkedListNode<T>
    
    private var head : Node?
    
    public var isEmpty:Bool {
        return head == nil
    }
    
    public var first:Node? {
        return head
    }
    
    public var last:Node? {
        
//        var node: Node? = head
//        while node != nil && node!.next != nil {
//            node = node!.next
//        }
        
        //Swift Magic
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }
    
    public func append(value:T){
        let newNode = Node(value: value)
        if let lastNode = last{
            newNode.previous = lastNode
            lastNode.next = newNode
        }else{
            head = newNode
        }
    }
    
    public var count:Int {
    
        if var node = head {
            var c = 1
            while case let next? = node.next {
                node = next
                c = c + 1
            }
            return c
        } else {
            return 0
        }
    }
    
    
    public func nodeAt(index:Int) -> Node? {
    
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                print(i)
                if i == 0 {
                    return node
                }
                i = i-1
                node = node?.next
            }
        }
        return nil
    }
    
    public subscript(index: Int) -> T {
        let node = nodeAt(index: index)
        assert(node != nil)
        return node!.value
    }
    
}

let list = LinkedList<String>()
list.isEmpty
list.first
list.append(value: "Hello")
list.first!.value
list.last!.value
list.append(value: "World")
list.first!.value
list.last!.value
list.count
