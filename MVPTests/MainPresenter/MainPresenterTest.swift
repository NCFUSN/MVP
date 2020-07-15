//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by SilentObserver on 15/07/2020.
//  Copyright © 2020 Nathan Furman. All rights reserved.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var mockTitle: String?
    func setGreeting(greeting: String) {
        self.mockTitle = greeting
    }
}

// command + U run all

class MainPresenterTest: XCTestCase {

    var view: MockView!
    var model: Person!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        model = Person(firstName: "John", lastName: "Doe")
        presenter = MainPresenter(view: view, person: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }

    func testModuleIsNotNil() {
        XCTAssertNotNil(view)
        XCTAssertNotNil(model)
        XCTAssertNotNil(presenter)
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.mockTitle, "John Doe")
    }
    
    func testModel() {
        XCTAssertEqual(model.firstName, "John")
        XCTAssertEqual(model.lastName, "Doe")
    }

}
