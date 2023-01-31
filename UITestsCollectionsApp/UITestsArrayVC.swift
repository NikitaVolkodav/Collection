//
//  UITestsCollectionsApp.swift
//  UITestsCollectionsApp
//
//  Created by Nikita Volkodav on 20.01.2023.
//

import XCTest

final class UITestsArrayVC: XCTestCase {
    
    func testWhereCollectionAndLabelWithResultCreationIntArrayExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
    
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        
        XCTAssertTrue(app.staticTexts["Array creation time:"].waitForExistence(timeout: 10))
        XCTAssert(app.collectionViews["Array Collection"].waitForExistence(timeout: 10))
        XCTAssertTrue(app.staticTexts["Array creation time:"].label.contains("Array creation time:"))
    }
    
    func testWhereLabelWithResultInsertionAtTheBeginningArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the beginning of the array one-be-one."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResultInsertionAtTheBeginningArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the beginning of the array."].tap()
     
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResultInsertionAtTheMidleArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the middle of the array one-be-one."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResulInsertionAtTheMidleArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the middle of the array."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResultInsertionAtTheEndArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the end of the array one-be-one."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResultInsertionAtTheEndArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Insert 1000 elements at the end of the array all at once."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Insertion time:"].label.contains("Insertion time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheBeginningArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements at the beginning of the array one-be-one."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheBeginningArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements at the beginning of the array."].tap()
       
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheMiddleArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements in the middle of the array one-be-one."].tap()
       
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheMiddleArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements in the middle of the array."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheEndArrayOneBeOneExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements at the end of the array one-be-one."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
    
    func testWhereLabelWithResultRemovingAtTheEndArrayAtOnceExistsSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Array").element.tap()
        app.buttons["Create Int array with 10_000_000 elements"].tap()
        let arrayCollectionView = app.collectionViews["Array Collection"]
        
        XCTAssert(arrayCollectionView.waitForExistence(timeout: 10))
        arrayCollectionView.staticTexts["Remove 1000 elements at the end of the array."].tap()
        
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].waitForExistence(timeout: 10))
        XCTAssertTrue(arrayCollectionView.staticTexts["Removing time:"].label.contains("Removing time:"))
    }
}
