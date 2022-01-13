//
//  Service.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 11/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import Foundation
import Alamofire

class Service {

    func checkIn(eventId: Int, name: String, email: String) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/checkin"

        AF.request(url).responseJSON { (response) in
            guard let data = response.data else {
                //  implementa
                return
            }
            do {
                //   implementa
            } catch {
                print(error.localizedDescription)
                //   implementa
            }
        }
    }

    func detail(id: Int ) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events/?"

        AF.request(url).responseJSON { (response) in
            guard let data = response.data else {
                //  implementa
                return
            }
            do {
                //   implementa
            } catch {
                print(error.localizedDescription)
                //   implementa
            }
        }
    }

    func homeEvent() {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events"

            AF.request(url).responseJSON { (response) in
                guard let data = response.data else {
                    //  implementa
                    return
                }
                do {
                    //   implementa
                } catch {
                    print(error.localizedDescription)
                    //   implementa
                }
            }
    }
}
