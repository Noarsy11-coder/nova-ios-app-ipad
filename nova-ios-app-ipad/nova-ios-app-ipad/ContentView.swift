import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // 🔹 Header
            HStack {
                Text("Dashboard")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
            }
            .padding(.horizontal, 24)
            
            // 🔹 Tarjeta (InterfaceGraph)
            InterfaceGraph()
            RecetaPorTIempo()

        }
        .padding(.vertical, 20)
        .background(Color(UIColor.systemGroupedBackground))
        Spacer()
    }
}

#Preview {
    ContentView()
}
