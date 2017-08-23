//: Playground - noun: a place where people can play

import UIKit


var array = [ 10, 9, 8, 7, 1, 2, 7, 3 ]

array.sort()

let maxElement = array.max() ?? 0

var countArray = [Int](repeating: 0, count: Int(maxElement + 1))

for element in array {
    countArray[element] += 1
}

countArray