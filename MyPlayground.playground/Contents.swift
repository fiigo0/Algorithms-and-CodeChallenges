//: Playground - noun: a place where people can play

import UIKit

//"Hello World".longestCommonSubsequence("Bonjour le monde")

var hello = "Hello World"
var hola = "Bonjour le monde"
print(hello)
print(hola)

//oorld

func longestCommonSubsequenceOnSentence(sentence:String, andSequence secondSequence:String){
    
    var firstSeq = Array(sentence.replacingOccurrences(of: " ", with: "").lowercased().characters)
    var secondSeq = Array(secondSequence.replacingOccurrences(of: " ", with: "").lowercased().characters)
    
    var pivotIndex = 0
    var pointerIndex = 0
    var secuencia = ""
    var ars:[String] = []
    
    
    for i in 0..<firstSeq.count{
        var firstElement = String(firstSeq[i])
        
        for j in 0..<secondSeq.count{
            var secondElement = String(secondSeq[j])
            
            if firstElement == secondElement{
                
                print("\(firstElement) - firstIndex \(i) - index : \(j)")
                
                secuencia = secuencia + firstElement
                
                if pointerIndex <= j {
                    
                    print("\(pointerIndex) - \(j)")
                    
                    pointerIndex = j
                }
                
                break
            }
            
            
        }
    }
    secuencia
    
}

longestCommonSubsequenceOnSentence(sentence: hello, andSequence: hola)

