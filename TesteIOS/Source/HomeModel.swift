//
//  HomeModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 13/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit


struct HomeModel: Decodable {
// //  let people: [People]
//    let date: Int
//   // let description: String
//   // let image: String
//  //  let price: Double
//  //  let title, id: String
//}

   let people: [People]?
    let date: Int?
    let description: String?
    let image: String?
    let longitude, latitude, price: Double?
    let title, id: String?


    enum CodingKeys: String, CodingKey {
        case people, date
        case description = "description"
        case image, longitude, latitude, price, title, id
    }
}

struct People: Decodable {
    let picture: String
    let name, eventID, id: String

    enum CodingKeys: String, CodingKey {
        case picture, name
        case eventID = "eventId"
        case id
    }
}


