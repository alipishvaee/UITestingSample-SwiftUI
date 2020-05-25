//
//  UITestingSample_SwiftUIUITests.swift
//  UITestingSample-SwiftUIUITests
//
//  Created by Ali Pishvaee on 5/25/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import XCTest
import Combine
import SwiftUI

class UITestingSample_SwiftUIUITests: XCTestCase {
    private var app: XCUIApplication!
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        
    }

    func testFirstName_LastName_Input() throws {
        let firstName = app.textFields["firstName"]
        let lastName = app.textFields["lastName"]
        let output = app.staticTexts["completeName"]
        firstName.tap(withNumberOfTaps: 1, numberOfTouches: 1)
        firstName.typeText("Ali")
        lastName.tap()
        lastName.typeText("Pishvaee")
        
        XCTAssertEqual("Your complete name is: Ali Pishvaee", output.label)
        

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
