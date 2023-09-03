//
//  NetworkServiceSpy.swift
//  Vkapp2Tests
//
//  Created by 123 on 03.09.2023.
//

import Foundation
@testable import Vkapp2
final class NetworkServiceSpy: NetworkServiceProtocol{
    private(set) var isGetFriendsWasCalled = false
    
    func getFriends(completion: @escaping (Result<[Vkapp2.Friend], Error>) -> Void) {
        isGetFriendsWasCalled = true
    }
    
    
}
