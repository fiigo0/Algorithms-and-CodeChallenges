//: Playground - noun: a place where people can play

import UIKit

//find the missing number

var array = [1...100]


func fillArray() -> Array<Int> {

    var data = [Int]()
    for x in 2...100 {
        data.append(x)
    }
    
    return data
}

func calculateMissingNumberInArray(data:[Int]) -> Int{

    var total = 0
    for number in data {
    
        total = total + number
    }
    
    return total
}


calculateMissingNumberInArray(data: fillArray())


var total = 5050