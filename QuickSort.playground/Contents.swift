//: Playground - noun: a place where people can play

import UIKit

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quicksort(less) + equal + quicksort(greater)
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quicksort(list)


/*
 guard 
 is a new conditional statement that requires execution to exit the current block if the condition isn’t met. Any new optional
 bindings created in a guard statement’s condition are available for the rest of the function or block, and the mandatory else must
 exit the current scope, by using return to leave a function, continue or break within a loop, or a @noreturn function like
 fatalError():
 */