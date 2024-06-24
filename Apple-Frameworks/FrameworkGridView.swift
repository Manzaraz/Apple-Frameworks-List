//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Christian Manzaraz on 24/06/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkView(name: "App Clips", imageName: "app-clip")
            FrameworkView(name: "App Clips", imageName: "app-clip")
            FrameworkView(name: "App Clips", imageName: "app-clip")
            FrameworkView(name: "App Clips", imageName: "app-clip")
            FrameworkView(name: "App Clips", imageName: "app-clip")
            FrameworkView(name: "App Clips", imageName: "app-clip")
    
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
