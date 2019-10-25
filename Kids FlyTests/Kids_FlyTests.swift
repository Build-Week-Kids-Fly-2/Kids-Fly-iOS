//
//  Kids_FlyTests.swift
//  Kids FlyTests
//
//  Created by Jake Connerly on 10/24/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import XCTest
@testable import Kids_Fly

class Kids_FlyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignUp() {
        
        enum NetworkError: Error {
            case noAuth
            case badAuth
            case otherError(Error)
            case badData
            case noDecode
            case noEncode
            case badResponse
        }
        
        let mock = MockDataLoader()
        mock.data = validSignInData
        // MAKE SURE USER PASSED IN HAS NOT BEEN PREVIOUSLY USED!!!
        let mockUser: UserRepresentation = UserRepresentation(email: "testymcTesterson2@test.com", password: "password", fullName: "Testy McTesterson2")
        let apiController = APIController(networkDataLoader: mock)
        var errorChecker: Bool = false
        let userExpectation = expectation(description: "wait for results")
        
        apiController.signUp(with: mockUser) { (error) in
            if error != nil {
                errorChecker = true
            }
            userExpectation.fulfill()
        }
        wait(for: [userExpectation], timeout: 2)
        XCTAssertFalse(errorChecker)
    }
    
    func testLogin() {
        let mock = MockDataLoader()
        mock.data = validSignInData
        let mockUser: UserRepresentation = UserRepresentation(email: "testymcTesterson2@test.com", password: "password", fullName: "Testy McTesterson2")
        let apiController = APIController(networkDataLoader: mock)
        var errorChecker: Bool = false
        var token: String? = nil
        let userExpectation = expectation(description: "wait for results")
        
        apiController.login(with: mockUser) { (result) in
             token = try? result.get()
            userExpectation.fulfill()
        }
        wait(for: [userExpectation], timeout: 2)
        XCTAssertNotNil(token)
        guard let tokenString = token else { return }
        XCTAssertTrue(tokenString.count > 50)
    }

    func testFecthingTrips() {
        let mock = MockDataLoader()
        mock.data = validTripJSON
        let tripcontroller = TripController(networkDataLoader: mock)
        var trips: [TripRepresentation]? = nil
        let resultsExpectation = expectation(description: "Wait for results")
        
        tripcontroller.fetchTripsFromServer { (tripReps) in
            if let tripReps = tripReps {
                resultsExpectation.fulfill()
                trips = tripReps
            }
        }
        wait(for: [resultsExpectation], timeout: 4)
        
        XCTAssertNotNil(trips)
        
    }
}
