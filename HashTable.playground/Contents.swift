//: Playground - noun: a place where people can play

import UIKit

public struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]
    
    private(set) public var count = 0
    
    public var isEmpty: Bool { return count == 0 }
    
    public init(capacity: Int) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeatElement([], count: capacity))
    
    }
    
    private func index(forKey key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    public subscript(key: Key) -> Value? {
        get {
            return Value(forKey: key)
        }
        set {
            if let value = newValue {
                updateValue(value, forKey: key)
            } else {
                removeValue(forKey: key)
            }
        }
    }
    
}

var hashTable = HashTable<String, String>(capacity: 5)

hashTable["firstName"] = "Steve"   // insert
let x = hashTable["firstName"]     // lookup
hashTable["firstName"] = "Tim"     // update
hashTable["firstName"] = nil       // delete