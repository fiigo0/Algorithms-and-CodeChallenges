//: Playground - noun: a place where people can play

import UIKit

func binarySearch<T:Comparable>(_ a:[T], key:T, range:Range<Int>) -> Int?{
    
    if range.lowerBound >= range.upperBound {
        //if this is the case the element does not exist on the array
        return nil
    }else{
    
    //Calculate where to split the array
        
        let pivot = (range.lowerBound + range.upperBound) / 2
        
        if a[pivot] > key {
            return binarySearch(a, key: key, range: 0..<pivot)
        }else if a[pivot] > key {
            return binarySearch(a, key: key, range: pivot + 1..<range.upperBound)
        }else{
            return pivot
        }
    }
}


var data = [1,2,0,7,1,2,5,3,4,5,6,7,8,9,10,20];
data.sort()
binarySearch(data, key: 3, range: 0..<data.count)

