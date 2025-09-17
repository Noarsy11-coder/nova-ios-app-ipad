import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Dashboard")
                    .font(.title)
                    .font(.headline)
                    .font(.system(size: 70))
                Spacer()
                    
            }
        }.padding(.horizontal)
            .padding(10)
        Spacer()
        .padding()
    }
}

#Preview {
    ContentView()
}
