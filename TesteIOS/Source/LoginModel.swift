//
//  LoginModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 08/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import Foundation

struct LoginModel: Codable {

    let eventId: Int
    let name: String
    let email: String

    init(eventId: Int, name: String, email: String) {
        self.eventId = eventId
        self.name = name
        self.email = email
    }
}
