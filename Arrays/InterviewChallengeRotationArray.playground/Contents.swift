//: Playground - noun: a place where people can play

import UIKit

/*
 perform right circular rotation on an array, N given items, then get the element at index X
 
 Example:
 
 Array : [1,2,3]
 
 then after one rotation, array is now [3,1,2]
 get element at index 0 then you get 3
 get element at index 1 then you get 2
 */


func getElement(at index:Int, from array:[Int], after rotations:Int) -> Int{

    var dataArray = array
    for _ in 0..<rotations {
        
        var temp = dataArray[0]
        
        dataArray.insert(dataArray.last!, at: 0)
        dataArray.removeLast()
        dataArray
    }
    
    
    print(dataArray)
    return dataArray[index]
}



let data = [1,2,3,5,6,8,9]
getElement(at: 0, from: data, after: 1)
getElement(at: 1, from: data, after: 1)
getElement(at: 0, from: data, after: 3)
