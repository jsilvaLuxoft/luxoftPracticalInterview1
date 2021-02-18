//
//  TechinicalInterviewTwoTests.swift
//  TechinicalInterviewTwoTests
//
//  Created by Silva, Jonathan on 16/02/21.
//

import XCTest
@testable import TechinicalInterviewTwo

class HomeTests: XCTestCase {

    var homeViewController: HomeViewController!
    
    func createMockController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
    }
    
    func testHomeTableViewCellsCount() throws {
        // Right now, there is no way to change or inject the businessLogic object since its a private property of HomeViewController.
        
        let rowsCount = homeViewController.tableView(homeViewController.tableView, numberOfRowsInSection: 0)
        XCTAssertEqual(rowsCount, 1)
    }

    // Test create new todo item flow
    func testCreateNewTodo() throws {
    }

    // Tests that whenever the a new TodoItem is successfully created, it updates the count on Home and a new cell have its data
    func testHomeTableViewUpdateAfterCreatingNewTodo() throws {
    }
}
