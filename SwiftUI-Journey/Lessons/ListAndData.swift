//
//  ListAndData.swift
//  SwiftUI-Journey
//
//  Created by Ibrahim Kolchi on 01.06.26.
//
import SwiftUI

struct Car: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let brand: String
}

struct CarListView: View {
    let cars = [
        Car(name: "M3", price: 85000, brand: "BMW"),
        Car(name: "C63", price: 92000, brand: "Mercedes"),
        Car(name: "RS6", price: 110000, brand: "Audi"),
        Car(name: "Supra", price: 55000, brand: "Toyota")
    ]
    
    var body: some View {
        NavigationStack {
            List(cars) { car in
                NavigationLink {
                    CarDetailView(car: car)
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(car.name)
                                .font(.headline)
                            Text(car.brand)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("$\(Int(car.price))")
                            .foregroundColor(.green)
                    }
                }
            }
            .navigationTitle("Maşınlar")
        }
    }
}

struct CarDetailView: View {
    let car: Car
    
    var body: some View {
        VStack(spacing: 16) {
            Text(car.name)
                .font(.largeTitle)
                .bold()
            Text(car.brand)
                .font(.title2)
                .foregroundColor(.gray)
            Text("$\(Int(car.price))")
                .font(.title3)
                .foregroundColor(.green)
        }
        .navigationTitle(car.name)
    }
}

#Preview {
    CarListView()
}
