//
//  ViewModel.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

@MainActor class ViewModel: ObservableObject{
    @Published var userData = [Post]()
    var service: Service
    init(service: Service){
        self.service = service
    }
    func fetchData()async{
        let local = "user"
        let web = "https://jsonplaceholder.typicode.com/users"
        if service.type == "WebService"{
            guard let data: [Post] = await WebService().downloadData(fromUrl: web) else { return }
            userData = data
            
        }else{
            guard let data: [Post] = await LocalService().downloadData(fromUrl: local) else { return }
            userData = data
        }
    }
    
}
