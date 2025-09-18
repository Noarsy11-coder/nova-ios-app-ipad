//
//  TablasComparativasView.swift
//  nova-ios-app-ipad
//
//  Created by Juan Pablo Escalona on 17/09/25.
//

import SwiftUI

struct TablasComparativasView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Tablas Comparativas")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
            }.padding(.horizontal, 30)
            PantallaSecundaria()
        }
    }
}

#Preview {
    TablasComparativasView()
}
