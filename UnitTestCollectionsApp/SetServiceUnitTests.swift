//
//  UnitTestSet.swift
//  UnitTestCollectionsApp
//
//  Created by Nikita Volkodav on 24.01.2023.
//

import XCTest
@testable import CollectionsApp

final class SetServiceUnitTests: XCTestCase {
    var setService: SetService!
    
    override func setUp() {
        super.setUp()
        setService = SetService()
    }
    
    override func tearDown() {
        super.tearDown()
        setService = nil
    }
    
    func testSetServiceWhereFindMatchingLettersSuccessfully() {
        let expectedSentenceResult = "Qr"
        let findMatchingLetters = setService.findMatchingLetters(in: "Qwerty", "Qazr")
        XCTAssertEqual(expectedSentenceResult, findMatchingLetters)
    }
    
    func testSetServiceWhereFindNoMatchingLettersSuccessfully() {
        let expectedSentenceResult = "aetwyz"
        let findNoMatchingLetters = setService.findNoMatchingLetters(in: "Qwerty", "Qazr")
        XCTAssertEqual(expectedSentenceResult, findNoMatchingLetters)
    }
    
    func testSetServiceWhereFindNoMatchingLettersInFirstTFSuccessfully() {
        let expectedSentenceResult = "etwy"
        let findNoMatchingLettersInFirstTF = setService.findNoMatchingLettersInFirstTF(in: "Qwerty", "Qazr")
        XCTAssertEqual(expectedSentenceResult, findNoMatchingLettersInFirstTF)
    }
}
