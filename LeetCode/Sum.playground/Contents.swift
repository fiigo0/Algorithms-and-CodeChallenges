//: Playground - noun: a place where people can play

import UIKit

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//Example:

//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1]


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
 
    var filteredArray = nums.filter {$0 <= target}
    filteredArray
    
    var firstIndex = 0
    var secondIndex = 0
    
    while filteredArray.count > 0 {
        let item = filteredArray[0]
        filteredArray.remove(at: 0)
        for num in filteredArray {
            if num + item == target {
                if item == num {
                 var tempArray = nums
                    tempArray.remove(at: firstIndex)
                    
                     secondIndex = tempArray.index(of: num)!
                    
                    if firstIndex <= secondIndex {
                        secondIndex = secondIndex + 1
                        return [nums.index(of: item)!, secondIndex]
                    }
                }else{
                    return [nums.index(of: item)!, nums.index(of: num)!]
                }
            }
        }
        firstIndex  = firstIndex + 1
    }
    return []
}


let data = [2,7,11,15]
let target = 9

twoSum(data, target)


