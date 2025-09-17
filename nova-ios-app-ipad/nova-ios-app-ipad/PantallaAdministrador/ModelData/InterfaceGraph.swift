import SwiftUI
import Charts

struct InterfaceGraph: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 2)
                .frame(height: 350)
                .overlay(
                    VStack (alignment: .leading, spacing: 12){
                        HStack{
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                                .foregroundStyle(.blue)
                                .frame(width:50, height : 50)
                            Text(" Visitors")
                                .font(.title)
                                .font(.headline)
                                .foregroundStyle(.black)
                            Spacer()
                            Picker(selection: .constant(1), label: Text("Elegir")) {
                                Text("Juan Perez").tag(1)
                                Text("2").tag(2)
                            }
                            .tint(.gray)
                        }
                        //Spacer()
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(Color.white)
                            .shadow(color: .black.opacity(0.08), radius: 8,x:0,y:2)
                            .frame(height: 180)
                            .overlay(
                                Chart(datosBarChart) { item in
                                    BarMark(x: .value("Nombre", item.nombre),
                                            y: .value("Cantidad", item.CantidadRecetas))
                                }
                                    .foregroundStyle(.mint)
                                    .chartYAxis{
                                        AxisMarks(position: .trailing)
                                    }
                                    .padding(8)
                            )
                        Spacer()
                        HStack{
                            Text("Goal:")
                                .foregroundStyle(.gray)
                            Text("1.000")
                                .foregroundStyle(.blue)
                            Spacer()
                            Text("Due day 31/12/2018")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    }
                    //Padding adentro del rectangulo
                        .padding(16)
                        
                //Padding afuera del rectangulo
                )
                .padding(30)
            
                
        }
        Spacer()
    }
}

#Preview {
    InterfaceGraph()
}
