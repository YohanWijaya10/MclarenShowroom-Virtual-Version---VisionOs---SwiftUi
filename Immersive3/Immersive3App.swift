//
//  Immersive3App.swift
//  Immersive3
//
//  Created by Yohan Wijaya on 27/04/24.
//

import SwiftUI

@main
struct Immersive3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)
        
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        } 
    }
}
