//
//  StackAndLayout.swift
//  SwiftUI-Journey
//
//  Created by Ibrahim Kolchi on 22.05.26.
//
import SwiftUI

struct ProfileCard: View {
    var body: some View {
        HStack(spacing: 16) {
            
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Kolchi")
                    .font(.headline)
                Text("Baku, Azerbaijan")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text("iOS Dev")
                .font(.subheadline)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

#Preview {
    ProfileCard()
}

