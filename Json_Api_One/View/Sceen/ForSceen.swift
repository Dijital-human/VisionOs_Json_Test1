//
//  ForSceen.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import SwiftUI

struct ForSceen: View {
    @ObservedObject var vm = ViewModel(service: WebService())
    var body: some View {
        List{
            ForEach(vm.userData){post in
                NavigationLink {
                    VStack(alignment:.center, spacing: 10.0){
                        Text(post.username).font(.title)
                        Text(post.phone)
                        Text(post.website)
                        Divider()
                        Text(post.address.city)
                        Text(post.address.street)
                        Text(post.address.suite)
                        Divider()
                        Text("Latiuit \(post.address.geo.lat)")
                        Text("Longitiut \(post.address.geo.lng)")
                        Divider()
                        Text(post.company.name)
                        Text(post.company.catchPhrase)
                        Text(post.company.bs)


                    }
                } label: {
                    Text("\(post.id)").padding()
                        .overlay {
                            Circle().stroke(.red)
                        }
                    Text(post.name)

                }
            }
        }
        .onAppear(){
            if vm.userData.isEmpty{
                Task{
                    await vm.fetchData()
                }
            }
            
        }
        .navigationTitle("Post")
    }
}

#Preview(windowStyle: .automatic) {
    ForSceen()
}
