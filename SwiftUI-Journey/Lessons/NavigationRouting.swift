//
//  NavigationRouting.swift
//  SwiftUI-Journey
//
//  Created by Ibrahim Kolchi on 01.06.26.
//

import SwiftUI
struct NavigationRouting: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 20 ) {
                NavigationLink("Profil") {
                    ProfileView()
                    
                }
                
            }
            .navigationTitle("Ana Sehife")
        }
    }
}
struct ProfileView: View {
    var body: some View {
        VStack {
            Text("KOlchi")
                .font(.title)
            Text("Ios Dev")
                .font(.title)
        }
        .navigationTitle("Profil")
    }
}
struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
        }
        .navigationTitle("Settings")
    }
}
#Preview {
    NavigationRouting()
}
