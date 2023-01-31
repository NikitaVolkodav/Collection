//
//  UITestsSetVC.swift
//  UITestsCollectionsApp
//
//  Created by Nikita Volkodav on 21.01.2023.
//

import XCTest

final class UITestsSetVC: XCTestCase {

    func testSetServiceWhereFindMatchingLettersSuccessfully()  {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Set").element.tap()
        app.textFields["textFieldOne"].tap()
        app.textFields["textFieldOne"].typeText("Qwerty")
        app.textFields["textFieldTwo"].tap()
        app.textFields["textFieldTwo"].typeText("Qazr")
        app.staticTexts["All matching letters"].tap()
        
        XCTAssertTrue(app.staticTexts["Qr"].exists)
    }
    
    func testSetServiceWhereFindNoMatchingLettersSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Set").element.tap()
        app.textFields["textFieldOne"].tap()
        app.textFields["textFieldOne"].typeText("Qwerty")
        app.textFields["textFieldTwo"].tap()
        app.textFields["textFieldTwo"].typeText("Qazr")
        app.staticTexts["All characters that do not match"].tap()
        
        XCTAssertTrue(app.staticTexts["aetwyz"].exists)
    }
    
    func testSetServiceWhereFindNoMatchingLettersInFirstTFSuccessfully() {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.containing(.staticText, identifier:"Set").element.tap()
        app.textFields["textFieldOne"].tap()
        app.textFields["textFieldOne"].typeText("Qwerty")
        app.textFields["textFieldTwo"].tap()
        app.textFields["textFieldTwo"].typeText("Qazr")
        app.staticTexts["All unique characters from the first text field that do not match in text fields"].tap()
        
        XCTAssertTrue(app.staticTexts["etwy"].exists)
    }
}
