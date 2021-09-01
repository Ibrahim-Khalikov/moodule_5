//
//  Module_5App.swift
//  Module-5
//
//  Created by cloud_vfx on 01/09/21.
//

import SwiftUI

@main
struct Module_5App: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
                
        }
    }
}
