//: Playground - noun: a place where people can play

import UIKit



func getUniqueDataArray(data:[Int]) -> Array<Int>{
    
    return Array(Set(data))
}

var dataArray = [1, 2, 1, 2, 3, 4, 5]

getUniqueDataArray(data: dataArray)


