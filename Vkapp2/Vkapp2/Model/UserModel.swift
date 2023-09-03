//
//  UserModel.swift
//  Vkapp2
//
//  Created by 123 on 03.09.2023.
//

struct UserModel: Decodable {
    var response: [User]
}
struct User: Decodable {
    var firstName: String?
    var lastName: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_400_orig"
    }
}
