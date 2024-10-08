//
//  Post.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

class Post: Identifiable, Codable{
    let id: Int
    let name, username, email: String
    let address: Address
    let phone, website: String
    let company: Company
}
class Address: Codable{
    let street, suite, city, zipcode: String
    let geo: Geo
}
class Geo: Codable{
    let lat, lng: String
}
class Company: Codable{
    let name, catchPhrase, bs: String
}
//"id": 1,
//"name": "Leanne Graham",
//"username": "Bret",
//"email": "Sincere@april.biz",
//"address": {
//"street": "Kulas Light",
//"suite": "Apt. 556",
//"city": "Gwenborough",
//"zipcode": "92998-3874",
//"geo": {
//"lat": "-37.3159",
//"lng": "81.1496"
//}
//},
//"phone": "1-770-736-8031 x56442",
//"website": "hildegard.org",
//"company": {
//"name": "Romaguera-Crona",
//"catchPhrase": "Multi-layered client-server neural-net",
//"bs": "harness real-time e-markets"

