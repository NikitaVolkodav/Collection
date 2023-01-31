//
//  PhoneBookDictinaryService.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import Foundation

class PhoneBookDictionaryService {
    
    var contacts = [String:Int]()
    
    func createdContactsDictionary()  {
        for i in 0...9999999 { contacts.updateValue(i, forKey: "Name\(i)") }
    }
    
    func searchFirstElementDictionary()  {
        _ = contacts["Name0"]
    }
    
    func searchLastElementDictionary() {
        _ = contacts["Name9999999"]
    }
    
    func searchNonExistingElementDictionary(){
        _ =  contacts["Name012"]
    }
}
