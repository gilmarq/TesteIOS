//
//  HomeModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 13/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import Foundation
import CoreLocation



struct HomeInfo: Codable {
    let code: Int
    let status: String
    let data: [HomeModel]
}

struct HomeModel: Codable {
     var date: Date?
     var description: String?
//     var longitude: CLLocation
//     var latitude: CLLocation
     var price: Double?
     var title: String?
     var id: Int?
     var image: URL?

    init( date: Date, description: String, /*longitude: CLLocation, latitude: CLLocation*/ price: Double, title: String, id: Int, image: URL) {
       // self.people = people
        self.date = date
        self.description = description
//        self.longitude = longitude
//        self.latitude = latitude
        self.price =  price
        self.title = title
        self.id = id
        self.image = image
    }

//    private enum CodingKeys: String, CodingKey {
//        typealias RawValue = <#type#>
//
//          case date: "date"
//         case description: "   var date: Date
//              var description: String
//         //     var longitude: CLLocation
//         //     var latitude: CLLocation
//              var price: Double
//              var title: String
//              var id: Int
//              var image: URL""
//        //     var longitude: CLLocation
//        //     var latitude: CLLocation
//             var price: Double
//             var title: String
//             var id: Int
//             var image: URL
//
//
//       }
}

