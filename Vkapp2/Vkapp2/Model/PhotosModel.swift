//
//  PhotosModel.swift
//  Vkapp2
//
//  Created by 123 on 02.09.2023.
//

struct PhotosModel: Decodable {
    var response: Photos
}

struct Photos: Decodable {
    var items: [Photo]?
}

struct Photo: Decodable {
    var id: Int
    var name: String?
    var sizes: [Sizes]
    
    struct Sizes:Codable{
        var url: String
    }

}
