import SwiftUI

struct PantallaSecundaria: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                
                InterfaceTablasComp()
            }
            .padding(.vertical, 20)
            .padding(.bottom, 80)
        }
        .background(Color(UIColor.systemGroupedBackground))
        //.scrollIndicators(.hidden) // opcional, para ocultar la barra lateral
    }
}

#Preview {
    PantallaSecundaria()
}

