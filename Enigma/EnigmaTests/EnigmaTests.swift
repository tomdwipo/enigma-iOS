//
//  EnigmaTests.swift
//  EnigmaTests
//
//  Created by Tommy on 04/01/22.
//

import XCTest
@testable import Enigma

class EnigmaTests: XCTestCase {
    private var vc: HomeContainerViewController!
    
    override func setUp() {
        super.setUp()
        let sb = UIStoryboard(name: "Home", bundle: nil)
        vc = sb.instantiateViewController(withIdentifier: "HomeContainerViewController") as? HomeContainerViewController
        vc.loadViewIfNeeded()
    }
    
    override  func tearDown() {
        vc = nil
        super.tearDown()
    }
    
    func test_outlets_shouldBeConnected(){
        XCTAssertNotNil(vc.tableView.dataSource)
        XCTAssertNotNil(vc.tableView.delegate)
    }
    
    func test_tableview_cellForRowAt_checkValue(){
        let cell = vc.tableView.dataSource?.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as! HomeViewCell
        XCTAssertEqual(cell.titleContent.text, "oke")
    }
    
    func test_tableview_didselectRowAt_checkValue(){
        let cell = vc.tableView.delegate?.tableView?(vc.tableView, didSelectRowAt: IndexPath(row: 0, section: 0)) 
        XCTAssertNotNil(cell)
    }
    
}
