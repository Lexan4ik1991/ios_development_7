//
//  GroupsModel.swift
//  Vkapp2
//
//  Created by 123 on 02.09.2023.
//

struct GroupsModel: Decodable {
    var response: Groups
}

struct Groups: Decodable {
    var items: [Group]
}

struct Group: Codable {
    var id: Int
    var name: String?
    var description: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case photo = "photo_50"
    }
}
