//
//  DetailModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 11/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import Foundation
import CoreLocation

struct DetailModel {
     var date: Data
     var description: String
     var longitude: CLLocation
     var latitude: CLLocation
     var price: Double
     var title: String
     var id: Int
     var url: URL
}

struct DetailURL: Codable {
    let type: String
    let url: String
}
