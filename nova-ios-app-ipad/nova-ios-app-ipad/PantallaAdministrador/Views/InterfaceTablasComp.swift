//
//  InterfaceTablasComp.swift
//  nova-ios-app-ipad
//
//  Created by Juan Pablo Escalona on 17/09/25.
//

import SwiftUI

struct InterfaceTablasComp: View {
    var body: some View {
        ZStack {
            let azulnova = Color(red: 3/255, green: 104/255, blue: 138/255)

            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 2)
                .frame(height: 650)
                .padding(.horizontal, 24)
                .overlay(
                    VStack(alignment: .leading, spacing: 12) {
                        
                        HStack{
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                                .foregroundStyle(azulnova)
                                .frame(width:50, height : 50)
                            Text(" Recetas Vendidas")
                                .font(.title)
                                .font(.headline)
                                .foregroundStyle(.black)
                            Spacer()
                            Picker(selection: .constant(1), label: Text("Elegir")) {
                                Text("Juan Perez").tag(1)
                                Text("Maria Gonzalez").tag(2)
                                Text("Roberto Estrada").tag(3)

                            }
                            .tint(.gray)
                        }.padding(20)
                    Spacer()
                    }
                    
                    
                        .padding(16)
                    )
                    .padding(.horizontal, 10)
            }
        
        }
    }

#Preview {
    InterfaceTablasComp()
}
