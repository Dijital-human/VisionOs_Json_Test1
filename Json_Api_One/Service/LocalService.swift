//
//  LocalService.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

class LocalService: Service, Codable{
    func downloadData<T>(fromUrl: String) async -> T? where T : Decodable, T : Encodable {
        do{
            guard let url = Bundle.main.url(forResource: fromUrl, withExtension: "json") else { throw NetworkErrorManager.badLocalUrl}
            guard let data = try? Data(contentsOf: url) else{ throw NetworkErrorManager.badData}
            let decodeData = try? JSONDecoder().decode(T.self, from: data)
            return decodeData
        }catch{
            print("Bad Data")
        }
        return nil
    }
    
    var type: String = "LocalService"
    
    
}
