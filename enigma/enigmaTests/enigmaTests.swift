//
//  enigmaTests.swift
//  enigmaTests
//
//  Created by Tommy on 03/01/22.
//

import XCTest
@testable import enigma

class enigmaTests: XCTestCase {
    private var vc: HomeViewController!
    
    override func setUp() {
        super.setUp()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        vc = sb.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as? HomeViewController
        vc.loadViewIfNeeded()
    }
    
    override func tearDown() {
        vc = nil
        super.tearDown()
    }
    
    
    func test_outlets_shouldBeConnected(){
      
        XCTAssertNotNil(vc.tableView)
        XCTAssertNotNil(vc.tableView.dataSource)
    }
    
    func test_tableview_numberOfRowsInSection_shouldReturn1(){
        XCTAssertEqual(vc.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_tableView_cellForRowAt_shouldTableView(){
        let cell = vc.tableView.dataSource?.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as! TableViewCell
        XCTAssertEqual(cell.contentLabel.text, "Testing")
 
    }
}
 
