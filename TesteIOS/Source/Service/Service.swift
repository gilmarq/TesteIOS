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
    var homeModel: [HomeModel] = []

    func checkIn(eventId: Int, name: String, email: String) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/checkin"

        // implementar
    }

    func detail(id: Int ) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events/?"
        // implementar
    }

    class func homeEvent( onComplete: @escaping ([HomeModel]?) -> Void) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events"
        var homeModel: [HomeModel] = []

        AF.request(url).responseJSON { (response) in
            switch (response.result) {
                case .success:
                    if let data = response.data {
                        do {
                            let response = try JSONDecoder().decode([HomeModel].self, from: data)
                            DispatchQueue.main.async {
                                onComplete(response)
                            }
                        }
                        catch {
                            print(error.localizedDescription)
                        }
                }
                case .failure( let error):
                    print(error)
            }
        }
    }
}
