//
//  ContentView.swift
//  nova-ios-app-ipad
//
//  Created by Luis Garza on 11/09/25.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                
                
                    .fill(Color.white) // usa systemBackground si quieres soporte light/dark
                    .shadow(color: Color.black.opacity(0.1),
                            radius: 10, x: 0, y: 2)
                    .frame(height: 400) // altura del rectángulo
                ZStack {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.white) // usa systemBackground si quieres soporte light/dark
                    
                        .shadow(color: Color.black.opacity(0.1),
                                radius: 10, x: 0, y: 2)
                          
                        .frame(height: 180) // altura del rectángulo
                    Chart (datosBarChart){ item in
                        BarMark(
                            x: .value("Comida:", item.nombre),
                            y: .value("Votos:", item.CantidadRecetas),
                            
                        )
                    }
                    
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                }
                .frame(height: 180)
                    .tint(.black)
                    .foregroundStyle(.mint)
                    .padding(50)
            }.padding(15)
            
                Spacer()
            
            }
    }
}

#Preview {
    ContentView()
}
