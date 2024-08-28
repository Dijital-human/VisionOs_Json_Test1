//
//  Json_Api_OneApp.swift
//  Json_Api_One
//
//  Created by Famil Mustafayev on 16.06.24.
//

import SwiftUI

@main
struct Json_Api_OneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
