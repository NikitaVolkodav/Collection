//
//  UITestDictionaryVC.swift
//  UITestsCollectionsApp
//
//  Created by Nikita Volkodav on 21.01.2023.
//

import XCTest

final class UITestDictionaryVC: XCTestCase {
    
    func testWhereCollectionContactsExistsSuccessfully() {
        
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        
        XCTAssertTrue(app.activityIndicators["Indicator in progress"].exists)
        XCTAssert(app.collectionViews["Dictionary Collection"].waitForExistence(timeout: 20))
        XCTAssertTrue(app.staticTexts["Array"].exists)
        XCTAssertTrue(app.staticTexts["Dictionary"].exists)
    }
    
    func testWhereLabelWithResultSearchingFirstElementInArrayExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Find the first contact"].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["First element search time: 0.0 ms. Result number: 0."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["First element search time: 0.0 ms. Result number: 0."].label.contains("First element search time:"))
    }
    
    func testWhereLabelWithResultSearchingFirstElementInDictionaryExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Find the first contact."].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["First element search time: 0.0 ms. Result number: 0."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["First element search time: 0.0 ms. Result number: 0."].label.contains("First element search time:"))
    }
    
    func testWhereLabelWithResultSearchingLastElementInArrayExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Find the last contact"].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["Last element search time: 0.0 ms. Result number: 9999999."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["Last element search time: 0.0 ms. Result number: 9999999."].label.contains("Last element search time:"))
    }
    
    func testWhereLabelWithResultSearchingLastElementInDictionaryExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Find the last contact."].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["Last element search time: 0.0 ms. Result number: 9999999."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["Last element search time: 0.0 ms. Result number: 9999999."].label.contains("Last element search time:"))
    }
    
    func testWhereLabelWithResultSearchingNonExistingElementInArrayExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Search for a non-existing element"].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["Non-existing element search time: 0.0 ms. Result number: -."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["Non-existing element search time: 0.0 ms. Result number: -."].label.contains("Non-existing element search time:"))
    }
    
    func testWhereLabelWithResultSearchingNonExistingElementInDictionaryExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Dictionary").element.tap()
        let dictionaryCollection = app.collectionViews["Dictionary Collection"]
        
        XCTAssert(dictionaryCollection.waitForExistence(timeout: 20))
        dictionaryCollection.staticTexts["Search for a non-existing element."].tap()
        
        XCTAssert(dictionaryCollection.staticTexts["Non-existing element search time: 0.0 ms. Result number: -."].waitForExistence(timeout: 10))
        XCTAssertTrue(dictionaryCollection.staticTexts["Non-existing element search time: 0.0 ms. Result number: -."].label.contains("Non-existing element search time:"))
    }
}
