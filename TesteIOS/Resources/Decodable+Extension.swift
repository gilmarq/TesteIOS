//
//  Decodable+Extension.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 14/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import Foundation

extension Decodable {

    static func formatJson<T: Decodable>(_ fileName:String, fileExtension: String = "json") -> T?{

        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
            return nil
        }
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch{
            return nil
        }

    }
}
