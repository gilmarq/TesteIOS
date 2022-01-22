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
        // implementar
    }

    class func detail(id: String?, onComplete: @escaping (DetailModel?) -> Void) {

        guard let id = id else { return }
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events/\(id)"
        AF.request(url).responseJSON { (response) in
            guard let data = response.data else {
                onComplete(nil)
                  // implementar
                return
            }
            do {
                let detailModel = try JSONDecoder().decode(DetailModel.self,from: data)
                onComplete(detailModel)
            } catch {
                print(error.localizedDescription)
                print(error)
                // implementar
                onComplete(nil)
            }
        }
    }

    class func homeEvent(onComplete: @escaping ([HomeModel]?) -> Void) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events"
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
                        // implementar
                        }
                }
                case .failure( let error):
                    print(error)
                  // implementar
            }
        }
    }
}
