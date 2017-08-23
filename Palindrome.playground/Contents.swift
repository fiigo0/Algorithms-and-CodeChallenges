//: Playground - noun: a place where people can play

import UIKit

var str = "aaabbbaaa"


func palindrome (word:String) -> Bool{
    var index = 0
    var endIndex = word.characters.count - 1
    let wordArray = Array(word.characters)
    var isPalindrome = true
    
    while index <= word.characters.count - 1  {
        if wordArray[index] == wordArray[endIndex] {
            isPalindrome = true
            index += 1
            endIndex -= 1
        }else{
            isPalindrome = false
            break
        }
    }
    return isPalindrome
}

palindrome(word: str)
