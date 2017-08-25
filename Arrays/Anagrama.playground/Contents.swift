//: Playground - noun: a place where people can play

import UIKit
import Foundation

func isAnagram(s1: String, s2: String) -> Bool {
    var string1 = s1.replacingOccurrences(of: " ", with: "")
    var string2 = s2.replacingOccurrences(of: " ", with: "")
    var (t1, t2) = (Array(string1.characters),Array(string2.characters))
    t1.sort()
    t2.sort()
    return String(t1) == String(t2)
}

isAnagram(s1: "hola perro", s2: "olah perro")

//func dictSignature(s : String) -> Dictionary<String, Int> {
//    var chars = Dictionary<String, Int>();
//    for y in s.characters {
//        let x = String(y)
//        if let v = chars[x] {
//            chars.updateValue(v + 1, forKey: x)
//            chars[x] = v + 1;
//        } else {
//            chars[x] = 1;
//        }
//    }
//    return chars;
//}
// 
//func isAnagram(s1: String, s2: String) -> Bool {
//    let (d1, d2) = (dictSignature(s: s1), dictSignature(s: s2));
//    return d1 == d2;
//}
// 
//let y = isAnagram(s1: "testing", s2: "one two three");
//let x = isAnagram(s1: "testing", s2: "gnitset");
