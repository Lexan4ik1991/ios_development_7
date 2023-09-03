//
//  FileCacheSpy.swift
//  Vkapp2Tests
//
//  Created by 123 on 03.09.2023.
//

import Foundation
@testable import Vkapp2
final class FileCacheSpy: FileCacheProtocol{
    private(set) var isAddFriendsWasCalled = false
    private(set) var isFetchFriendsWasCalled = false
    private(set) var isFetchFriendDateWasCalled = false
    private(set) var isAddFriendDateWasCalled = false
    func addFriends(friends: [Vkapp2.Friend]) {
        isAddFriendsWasCalled = true
    }
    
    func fetchFriends() -> [Vkapp2.Friend] {
        isFetchFriendsWasCalled = true
        return []
    }
    
    func fetchFriendDate() -> Date? {
        isFetchFriendDateWasCalled = true
        return nil
    }
    
    func addFriendDate() {
        isAddFriendDateWasCalled = true
    }
    
    
}
