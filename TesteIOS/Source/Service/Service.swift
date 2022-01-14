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

//        AF.request(url).responseJSON { (response) in
//            guard let data = response.data else {
//                onComplete(nil)
//                return
//            }
//            do {
//                let homeModel = try JSONDecoder().decode(HomeModel.self,from: data)
//                onComplete(homeModel)
//                print(homeModel)
//                return
//            } catch {
//                print(error.localizedDescription)
//                //   implementa
//            }
//        }
    }

  class func homeEvent( onComplete: @escaping (HomeInfo?) -> Void) {
        let url = "http://5f5a8f24d44d640016169133.mockapi.io/api/events"

    
        //  AF.request(url).responseJSON { (response) in
             let request = AF.request(url)
              // 2
              request.responseJSON { (data) in
                print(data)
         
//        guard let data = response.data else {
//            onComplete(nil)
//            return
//        }
//        do {
//            let homeInfo = try JSONDecoder().decode(HomeInfo.self,from: data)
//            onComplete(homeInfo)
//            print(homeInfo)
//            return
//        } catch {
//            print(error.localizedDescription)
//            //   implementa
//        }
        }
    }
    

//        guard let data = response.data else {
//                              onComplete(nil)
//                              return
//                          }
//                          do {
//                       let marvelInfo = try JSONDecoder().decode(MarvelInfo.self,from: data)
//                              onComplete(marvelInfo)
//                              print(marvelInfo)
//                          } catch {
//                              print(error.localizedDescription)
//                              onComplete(nil)
//                          }
//    }
}
