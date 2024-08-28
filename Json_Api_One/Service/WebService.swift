//
//  WebService.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

class WebService: Codable, Identifiable, Service{
    func downloadData < T: Codable > (fromUrl: String) async -> T? {
        do{
            guard let url = URL(string: fromUrl) else { throw NetworkErrorManager.badWebUrl }
            let (data, response) = try! await URLSession.shared.data(from: url)
            guard response is HTTPURLResponse else { throw NetworkErrorManager.badResponse }
            guard let decodeData = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkErrorManager.badData }
                    
            return decodeData
        }catch NetworkErrorManager.badWebUrl{
            print("Bad Url")
        }catch NetworkErrorManager.badResponse{
            print("Bad Response")
        }catch{
            print("Bad Data")
        }
        return nil
    }
    
    var type: String = "WebService"
    
    
}
