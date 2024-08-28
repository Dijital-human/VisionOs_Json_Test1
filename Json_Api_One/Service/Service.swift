//
//  File.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

protocol Service{
    func downloadData<T: Codable>(fromUrl: String)async -> T?
    
    var type: String { get }
}
