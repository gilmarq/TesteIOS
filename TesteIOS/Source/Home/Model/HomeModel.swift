//
//  HomeModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 13/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

struct HomeModel: Decodable {

    let people: [People]?
    let date: Date?
    let description: String?
    let image: String?
    let longitude, latitude, price: Double?
    let title, id: String?


    enum CodingKeys: String, CodingKey {
        case people
        case date
        case description = "description"
        case image
        case longitude
        case latitude
        case price
        case title
        case id
    }
}

struct People: Decodable {
    let name: String
    let eventID: String
    let id: String

    enum CodingKeys: String, CodingKey {
        case name
        case eventID = "eventId"
        case id
    }
}


