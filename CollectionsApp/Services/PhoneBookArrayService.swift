//
//  DictionaryService.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import Foundation

class PhoneBookArrayService {
    var contacts = [PhoneBookArray]()
    
    func createdContactsArray() {
        for i in 0...9999999 { contacts.append(PhoneBookArray(name: "Name\(i)", phone: "\(i)"))}
    }
    
    func searchFirstElementInArray() {
        _ = contacts.first( where: { $0.name == "Name0"})
    }
    
    func searchLastElementInArray() {
        _ = contacts.last(where: { $0.name == "Name9999999" })
    }
    
    func searchNonExistentElementInArray() {
        _ = contacts.contains(where: {$0.name == "name0"})
    }
}
