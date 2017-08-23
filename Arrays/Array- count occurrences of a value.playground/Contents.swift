

//: Playground - noun: a place where people can play

import UIKit

var data = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]

func findOcurrencesOfValue(value:Int, onData data:[Int]){
    print(data.filter{ $0 == value}.count)
}


//findOcurrencesOfValue(value: 3, onData: data)



func countOccurrencesOfKey(_ key: Int, inArray a: [Int]) -> Int {
    func leftBoundary() -> Int {
        var low = 0
        var high = a.count
        while low < high {
            let midIndex = low + (high - low)/2
            
            print("midIndex = \(midIndex) = \(low) + \(high) - \(low) / \(2)")
            
            if a[midIndex] < key {
                
                print("if \(a[midIndex]) < \(key)")
                
                low = midIndex + 1
                
                print("low \(low) - top \(high) - pivot \(low + (high - low) / 2)")
                
            } else {
                high = midIndex
            }
        }
        return low
    }
    
    func rightBoundary() -> Int {
        var low = 0
        var high = a.count
        while low < high {
            let midIndex = low + (high - low)/2
            if a[midIndex] > key {
                high = midIndex
            } else {
                low = midIndex + 1
            }
        }
        return low
    }
    
    return rightBoundary() - leftBoundary()
}


countOccurrencesOfKey(10, inArray: data)
