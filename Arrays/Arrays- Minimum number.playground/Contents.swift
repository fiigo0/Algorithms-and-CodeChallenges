//: Playground - noun: a place where people can play

import UIKit

let data = [10,5,20,27,12,34,54,2]

func findMaxAndMinInArray(data:[Int]) {

    var min = data[0]
    var max = data[0]
    
    for num in data {
        if num <= min {
            min = num
        }else if num >= max{
            max = num
        }
    }
    
    min
    max
}


findMaxAndMinInArray(data: data)