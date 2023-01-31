//
//  ArrayManager.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

class ArrayService {
    
    var array = [Int]()
    
    func createArray() {
        array =  [Int](0...9999999)
    }
    
    func insertAtTheBeginningArrayOneBeOne() {
        Array(0...999).sorted(by: (>)).forEach { i in array.insert(i, at: 0)}
    }
    
    func insertAtTheBeginningArrayAtOnce() {
        array.insert(contentsOf: 0...999, at: 0)
    }
    
    func insertAtTheMiddleArrayOneBeOne() {
        Array(0...999).sorted(by: (>)).forEach { i in array.insert(i, at: array.count / 2 ) }
    }
    
    func insertAtTheMiddleArrayAtOnce() {
        array.insert(contentsOf: 0...999, at: array.count / 2 )
    }
    
    func insertAtTheEndArrayOneBeOne() {
        Array(0...999).sorted(by: (<)).forEach { i in array.append(i) }
    }
    
    func insertAtTheEndArrayAtOnce() {
        array.insert(contentsOf: 0...999, at: array.count)
    }
    
    func removeAtTheBeginningArrayOneBeOne() {
        Array(0...999).sorted(by: (>)).forEach { i in array.remove(at: i) }
    }
    
    func removeAtTheBeginningArrayAtOnce() {
        array.removeFirst(1000)
    }
    
    func removeAtTheMiddleArrayOneBeOne() {
        Array(array.count/2-999...array.count/2).sorted(by: (>)).forEach { i in array.remove(at: i) }
    }
    
    func removeAtTheMiddleArrayAtOnce() {
        array[array.count/2-999...array.count/2] = []
    }
    
    func removeAtTheEndArrayOneBeOne() {
        array.removeSubrange(array.count-1000...array.count-1)
    }
    
    func removeAtTheEndArrayAtOnce() {
        array.removeLast(1000)
    }
}
