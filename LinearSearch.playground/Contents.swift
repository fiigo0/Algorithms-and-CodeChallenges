//: Playground - noun: a place where people can play

import UIKit

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

let array = [5, 2, 4, 7,3,2]
linearSearch(array, 2) 	// This will return 1