//
//  MeasureTimeService.swift
//  UnitTestCollectionsApp
//
//  Created by Nikita Volkodav on 24.01.2023.
//

import XCTest
@testable import CollectionsApp

final class MeasureTimeServiceUnitTest: XCTestCase {
    
    var measureTimeService : MeasureTimeService!

    override func setUp() {
        super.setUp()
        measureTimeService = MeasureTimeService()
    }

    override func tearDown() {
        super.tearDown()
        measureTimeService = nil
    }
    
    func testMeasureTimeSuccessfully() {
        let measure = measureTimeService.measureTime { sleep(3) }
            XCTAssertEqual("3.0", String(format: "%.1f", Double(measure) ?? 0))
    }
}

