//: Playground - noun: a place where people can play

import UIKit

func twoSumProblem(_ a: [Int], k: Int) -> ((Int, Int))? {
    
    var dict = [Int: Int]()
    
    for i in 0 ..< a.count {
        
        if let newK = dict[a[i]] {
            
//            print(newK,i)
           
            return (newK, i)
        } else {
            
            dict[k - a[i]] =  i
        }
        
//        print(dict.description)
        
    }
    
//    print(dict.description)
    
    return nil  // if empty array or no entries sum to target k
}

var data = [ 7, 2, 23, 8, -1, 0, 11, 6  ]

twoSumProblem(data, k: 10)
