//
//  FriendViewControllerTest.swift
//  Vkapp2Tests
//
//  Created by 123 on 03.09.2023.
//

import Foundation
import XCTest

@testable import Vkapp2
final class FriendsControllerTests: XCTestCase {
    private var friendsController: FriendsViewController!
    private var networkService: NetworkServiceSpy!
    private var fileCache: FileCacheSpy!
    
    override func setUp() {
        super.setUp()
        networkService = NetworkServiceSpy()
        fileCache = FileCacheSpy()
        friendsController = FriendsViewController(networkService: networkService, models: [], fileCache: fileCache)
    }
    
    override func tearDown() {
        friendsController = nil
        networkService = nil
        fileCache = nil
        super.tearDown()
    }
     
    func testGetFriends() {
        friendsController.getFriends()
        XCTAssertTrue(networkService.isGetFriendsWasCalled, "метод не вызван")
    }
    
}
