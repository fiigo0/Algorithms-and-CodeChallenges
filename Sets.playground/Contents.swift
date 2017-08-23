//: Playground - noun: a place where people can play

import UIKit

let names = ["John", "Paul", "George", "Ringo", "Mick", "Keith", "Charlie", "Ronnie"]
var stringSet = Set<String>() // 1
var loopsCount = 0
while stringSet.count < 4 {
    let randomNumber = arc4random_uniform(UInt32(names.count)) // 2
    let randomName = names[Int(randomNumber)] // 3
    print(randomName) // 4
    stringSet.insert(randomName) // 5
    loopsCount += 1 // 6
}

// 7
print("Loops: " + loopsCount.description + ", Set contents: " + stringSet.description)