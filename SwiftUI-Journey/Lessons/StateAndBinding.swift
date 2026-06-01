//
//  StateAndBinding.swift
//  SwiftUI-Journey
//
//  Created by Ibrahim Kolchi on 22.05.26.
//
import SwiftUI
struct StateAndBinding: View {
    @State private var count = 0
    var body: some View {
        VStack (alignment: .leading, spacing: 8)
        {
            Text("State: \(count)")
            Button("Increment") {
                count += 1
            }
        }
    }
}
