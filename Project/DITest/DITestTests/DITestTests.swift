//
//  DITestTests.swift
//  DITestTests
//
//  Created by Tommy on 14/01/22.
//

import XCTest
@testable import DITest

class DITestTests: XCTestCase {
    
    func test_goVC(){
        let vc = AssemblerManager.goViewcontroller() as! GoViewController
        vc.loadViewIfNeeded()
        XCTAssertEqual(vc.textlabel.text, "default")
        vc.button.sendActions(for: UIControl.Event.touchUpInside)
        XCTAssertEqual(vc.textlabel.text, "oke")
        vc.button.sendActions(for: UIControl.Event.touchUpInside)
        XCTAssertEqual(vc.textlabel.text, "no")

    }

}
