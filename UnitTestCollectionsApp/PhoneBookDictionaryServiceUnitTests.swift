//
//  PhoneBookDictionaryServiceUnitTests.swift
//  UnitTestCollectionsApp
//
//  Created by Nikita Volkodav on 24.01.2023.
//

import XCTest
@testable import CollectionsApp

final class PhoneBookDictionaryServiceUnitTests: XCTestCase {
    
    var phoneBookDictionaryService: PhoneBookDictionaryService!
    
    override func setUp() {
        phoneBookDictionaryService = PhoneBookDictionaryService()
    }
    
    override func tearDown() {
        phoneBookDictionaryService = nil
    }
    
    func testCreatedPhoneBookDictionaryWithTenMillionsElementsSuccessfully()  {
        XCTAssertEqual(phoneBookDictionaryService.contacts.count, 0)
        phoneBookDictionaryService.createdContactsDictionary()
        XCTAssertEqual(phoneBookDictionaryService.contacts["Name0"], 0)
        XCTAssertEqual(phoneBookDictionaryService.contacts["Name777"], 777)
    }
}
