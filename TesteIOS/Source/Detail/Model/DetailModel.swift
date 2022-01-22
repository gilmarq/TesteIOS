//
//  DetailModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 11/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

struct DetailModel: Decodable {

    var people: [People]?
    var date: Date?
    var description: String?
    var image: String?
    var longitude, latitude: Double?
    var price: Double?
    var title: String?
    var id: String?


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
