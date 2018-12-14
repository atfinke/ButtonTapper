//
//  ButtonTapperMagic.swift
//  ButtonTapperMagic
//
//  Created by Andrew Finke on 10/1/17.
//  Copyright © 2017 Andrew Finke. All rights reserved.
//

import XCTest

class ButtonTapperMagic: XCTestCase {

    override func setUp() {
        super.setUp()
        let original = class_getInstanceMethod(objc_getClass("XCUIApplicationProcess") as? AnyClass, Selector(("waitForQuiescenceIncludingAnimationsIdle:")))
        let replaced = class_getInstanceMethod(type(of: self), #selector(replace))
        method_exchangeImplementations(original!, replaced!)
    }

    @objc func replace() {
        return
    }

    func testStartEggInc() {
        let app = XCUIApplication(bundleIdentifier: "com.auxbrain.egginc")
        app.launch()

        UIApplication.shared.isIdleTimerDisabled = true

        let screenBounds = UIScreen.main.bounds
        let normalized = app.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        let coordinate = normalized.withOffset(CGVector(dx: screenBounds.width / 2, dy: screenBounds.height - 70))

        sleep(2)
        while true {
            coordinate.doubleTap()
        }
    }


    func testStartRobinhoodx() {
        let app = XCUIApplication(bundleIdentifier: "com.robinhood.release.Robinhood")
        app.launch()


        sleep(5)

        app.tabBars.buttons.allElementsBoundByIndex[1].tap()
        print(app.tabBars.buttons)

        UIApplication.shared.isIdleTimerDisabled = true

        let screenBounds = UIScreen.main.bounds
        let normalized = app.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        let coordinate = normalized.withOffset(CGVector(dx: screenBounds.width / 2, dy: screenBounds.height / 2))

        sleep(2)
        while true {
            coordinate.doubleTap()
        }
    }

}


