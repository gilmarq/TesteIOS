//
//  MapsModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 26/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit
import MapKit

class MapsModel: NSObject,  MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D

    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
