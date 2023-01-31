//
//  PhoneBookArrayAndDictionaryServiceUnitTests.swift
//  UnitTestCollectionsApp
//
//  Created by Nikita Volkodav on 24.01.2023.
//

import XCTest
@testable import CollectionsApp

final class PhoneBookArrayServiceUnitTests: XCTestCase {
    
    var phoneBookArrayService: PhoneBookArrayService!

    override func setUp() {
        super.setUp()
        phoneBookArrayService = PhoneBookArrayService()
    }

    override func tearDown(){
        super.tearDown()
        phoneBookArrayService = nil
    }

    func testCreatedPhoneBookArrayWithTenMillionsElementsSuccessfully(){
        XCTAssertEqual(phoneBookArrayService.contacts.count, 0)
        phoneBookArrayService.createdContactsArray()
        XCTAssertEqual(phoneBookArrayService.contacts[0].name, "Name0")
        XCTAssertEqual(phoneBookArrayService.contacts[0].phone, "0")
        XCTAssertEqual(phoneBookArrayService.contacts[9999999].name, "Name9999999")
        XCTAssertEqual(phoneBookArrayService.contacts[9999999].phone, "9999999")
    }
}
