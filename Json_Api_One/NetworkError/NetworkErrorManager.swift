//
//  NetworkErrorManager.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

enum NetworkErrorManager: Error{
    case badWebUrl
    case badLocalUrl

    case badResponse
    case badData
}
