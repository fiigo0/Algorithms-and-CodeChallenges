//: Playground - noun: a place where people can play

import UIKit
/*
Given a string, find the length of the longest substring without repeating characters.

Examples:

Given "abcabcbb", the answer is "abc", which the length is 3.

Given "bbbbb", the answer is "b", with the length of 1.

Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 
 */


func lengthOfLongestSubstring(_ s: String) -> Int {

        
    var charsArray = Array(s.characters)
    var subs = ""
    var longesSubstring = ""
    
    for i in 0..<charsArray.count {
        
        for c in charsArray{
            
            if subs.contains("\(c)") {
                
                if subs.characters.count > longesSubstring.characters.count {
                    longesSubstring = subs
                    
                }
            } else {
                subs.append(c)
            }
            charsArray.remove(at: 0)
        
        
        
        }
    }
    
    print(subs)
    return 0
        
}


lengthOfLongestSubstring("abcabcbb")
lengthOfLongestSubstring("bbbbb")
lengthOfLongestSubstring("pwwkew")
