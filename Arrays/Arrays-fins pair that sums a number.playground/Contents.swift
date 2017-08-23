//: Playground - noun: a place where people can play

import UIKit

func getIntegersThatSum(target:Int, inArray data:[Int]){

    if data.count < 2 {
        return
    }
    
    var set:Set<Int> = []
    
    for value in data {
        var lookup = target - value
        
        if !set.contains(lookup) {
            set.insert(value)
        }else{
            print("\(value) + \(lookup)")
        }
    }
    
}

var dataArray = [0, 14, 0, 4, 7, 8, 3, 5, -7, -2]

getIntegersThatSum(target: 12, inArray: dataArray)




