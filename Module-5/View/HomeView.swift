//
//  ContentView.swift
//  Module-5
//
//  Created by cloud_vfx on 01/09/21.
//

import SwiftUI

struct HomeView: View {
    
 @EnvironmentObject var model: ContentModel
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
