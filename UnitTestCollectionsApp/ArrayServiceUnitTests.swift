//
//  UnitTestCollectionsApp.swift
//  UnitTestCollectionsApp
//
//  Created by Nikita Volkodav on 22.01.2023.
//

import XCTest
@testable import CollectionsApp

final class ArrayServiceUnitTests: XCTestCase {
    
    var arrayService: ArrayService!
    
    override func setUp() {
        super.setUp()
        arrayService = ArrayService()
    }
    
    override func tearDown() {
        super.tearDown()
        arrayService = nil
    }
    
    func testCreatedArrayWithTenMillionsElementsSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.createArray()
        XCTAssertEqual(arrayService.array.count, 10000000)
    }
    
    func testInsertingAtTheBeginningArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheBeginningArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[1000], 5)
        XCTAssertEqual(arrayService.array[1001], 55)
    }
    
    func testInsertingAtTheBeginningArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheBeginningArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[1000], 5)
        XCTAssertEqual(arrayService.array[1001], 55)
    }
    
    func testInsertingAtTheMiddleArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheMiddleArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[0], 5)
        XCTAssertEqual(arrayService.array[1001], 55)
    }
    
    func testInsertingAtTheMiddleArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheMiddleArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[0], 5)
        XCTAssertEqual(arrayService.array[1001], 55)
    }
    
    func testInsertingAtTheEndArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheEndArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[0], 5)
        XCTAssertEqual(arrayService.array[1], 55)
    }
    
    func testInsertingAtTheEndArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [5,55]
        arrayService.insertAtTheEndArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 1002)
        XCTAssertEqual(arrayService.array[0], 5)
        XCTAssertEqual(arrayService.array[1], 55)
    }
    
    func testRemovingAtTheBeginningArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheBeginningArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 1000)
        XCTAssertEqual(arrayService.array[8999], 9999)
    }
    
    func testRemovingAtTheBeginningArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheBeginningArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 1000)
        XCTAssertEqual(arrayService.array[8999], 9999)
    }
    
    func testRemovingAtTheMiddleArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheMiddleArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 0)
        XCTAssertEqual(arrayService.array[8999], 9999)
    }
    
    func testRemovingAtTheMiddleArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheMiddleArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 0)
        XCTAssertEqual(arrayService.array[8999], 9999)
    }
    
    func testRemovingAtTheEndArrayOneBeOneSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheEndArrayOneBeOne()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 0)
        XCTAssertEqual(arrayService.array[8999], 8999)
    }
    
    func testRemovingAtTheEndArrayAtOnceSuccessfully() {
        XCTAssertEqual(arrayService.array.count, 0)
        arrayService.array = [Int](0...9999)
        XCTAssertEqual(arrayService.array.count, 10000)
        arrayService.removeAtTheEndArrayAtOnce()
        XCTAssertEqual(arrayService.array.count, 9000)
        XCTAssertEqual(arrayService.array[0], 0)
        XCTAssertEqual(arrayService.array[8999], 8999)
    }
}
