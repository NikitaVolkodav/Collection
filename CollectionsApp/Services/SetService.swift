//
//  SetManager.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

class SetService {
    
    var firstTextSet = Set<Character>()
    var secondTextSet = Set<Character>()
    
    func findMatchingLetters(in string1: String, _ string2: String ) -> String {
        firstTextSet = Set(string1)
        secondTextSet = Set(string2)
        return String(Array(firstTextSet.intersection(secondTextSet)).sorted(by:<))
    }
    
    func findNoMatchingLetters(in string1: String, _ string2: String ) -> String {
        firstTextSet = Set(string1)
        secondTextSet = Set(string2)
        return String(Array(firstTextSet.symmetricDifference(secondTextSet)).sorted(by:<))
    }
    
    func findNoMatchingLettersInFirstTF(in string1: String, _ string2: String ) -> String {
        firstTextSet = Set(string1)
        secondTextSet = Set(string2)
        return String(Array(firstTextSet.subtracting(secondTextSet)).sorted(by:<))
    }
}
