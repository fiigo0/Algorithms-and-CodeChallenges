//: Playground - noun: a place where people can play

import UIKit

let input1 = [1, 5, 10, 20, 40, 80]
let input2 = [6, 7, 20, 80, 100]
let input3 = [3, 4, 15, 20, 30, 70, 80, 120]
//Output: 20, 80


var set = Set(input1)
var set1 = Set(input2)
var set2 = Set(input3)



set.intersection(set1).intersection(set2)



