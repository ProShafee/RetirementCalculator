//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Shafee Rehman on 19/08/23.
//

import XCTest

final class RetirementCalculatorUITests: XCTestCase {
    func testExample() throws {
        XCTContext.runActivity(named: "screenshot") { activity in
            let app = XCUIApplication()
            app.launch()

            XCTAssertTrue(app.buttons["Calculate retirement Amount"].waitForExistence(timeout: 2))
            
            app.textFields["Monthly investemnts"].tap()
            app.textFields["Monthly investemnts"].tap()
            app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app/*@START_MENU_TOKEN@*/.keys["8"]/*[[".keyboards.keys[\"8\"]",".keys[\"8\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.keys["5"].tap()
            
            app.textFields["Your current age"].tap()
            app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app/*@START_MENU_TOKEN@*/.keys["7"]/*[[".keyboards.keys[\"7\"]",".keys[\"7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            app.textFields["Your planned retirement age"].tap()
            app.keys["6"].tap()
            app.keys["5"].tap()

            app.textFields["Average interest rate of investments"].tap()
            app.keys["8"].tap()
            
            app.textFields["Current Savings"].tap()
            app.keys["5"].tap()
            app.keys["8"].tap()
            app.keys["0"].tap()
            app.keys["0"].tap()
            
            app.buttons["Calculate retirement Amount"].tap()
        }
    }
}
