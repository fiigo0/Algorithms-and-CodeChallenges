//: Playground - noun: a place where people can play

import UIKit

import Foundation

var randomNumbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]

func bubbleSort(numsData: [Int]) {
    
    var nums = numsData
    while true {
        var swapped = false
        
        for i in 1..<nums.count {
            if nums[i] < nums[i - 1] {
                let temp = nums[i]
                nums[i] = nums[i - 1]
                nums[i - 1] = temp
                swapped = true
            }
        }
        
        if !swapped {
            break
        }
    }
    print(nums)
}

print(randomNumbers)
bubbleSort(numsData: randomNumbers)
