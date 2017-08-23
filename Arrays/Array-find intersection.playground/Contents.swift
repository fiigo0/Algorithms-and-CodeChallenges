//: Playground - noun: a place where people can play

import UIKit

var dataOne = [21, 34, 41, 22, 35]
var dataTwo = [61, 34, 45, 21, 11]


dataOne.sort()
dataTwo.sort()


let set1:Set<Int> = Set(dataOne)
let set2:Set<Int> = Set(dataTwo)

set1.union(set2)// Union of two sets
set1.intersection(set2)// Intersection of two sets
set1.symmetricDifference(set2)// exclusiveOr