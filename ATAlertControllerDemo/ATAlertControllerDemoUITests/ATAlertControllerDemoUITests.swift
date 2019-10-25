//
//  ATAlertControllerDemoUITests.swift
//  ATAlertControllerDemoUITests
//
//  Created by Arasuvel on 02/03/19.
//  Copyright © 2019 demo. All rights reserved.
//

import XCTest

class ATAlertControllerDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.staticTexts["Single Buttom"]/*[[".buttons[\"Single Buttom\"].staticTexts[\"Single Buttom\"]",".staticTexts[\"Single Buttom\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let elementsQuery = app.alerts["Title"].scrollViews.otherElements
        elementsQuery.buttons["OK"].tap()
        app.buttons["Multiple Button"].tap()
        elementsQuery.buttons["Accept"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Multiple Button"]/*[[".buttons[\"Multiple Button\"].staticTexts[\"Multiple Button\"]",".staticTexts[\"Multiple Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let cancelButton = elementsQuery.buttons["Cancel"]
        cancelButton.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Alert + TextField"]/*[[".buttons[\"Alert + TextField\"].staticTexts[\"Alert + TextField\"]",".staticTexts[\"Alert + TextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        cancelButton.tap()
        
        let actionButton = app.buttons["Action"]
        actionButton.tap()
        
        let elementsQuery2 = app.sheets["Title"].scrollViews.otherElements
        elementsQuery2.buttons["Google Maps"].tap()
        actionButton.tap()
        elementsQuery2.buttons["Apple Maps"].tap()
        actionButton.tap()
        elementsQuery2.buttons["Cancel"].tap()
                
                
    }

}
