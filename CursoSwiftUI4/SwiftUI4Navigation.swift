//
//  SwiftUI4Navigation.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 14/6/22.
//

import SwiftUI

struct SwiftUI4Navigation: View {
    
    let number = 7
    
    var body: some View {
        NavigationStack{
            List {
                /*ForEach(1...10, id: \.self){ idx in
                    NavigationLink{
                        VStack{
                            Text("\(number) x \(idx) = ")
                            Text("\(idx*number)")
                                .fontWeight(.heavy)
                        }
                    } label: {
                        Text("\(number) x \(idx) ")
                    }
                }*/
                NavigationLink(value: "Soy un texto"){
                    Text("Fila de texto")
                }
                
                NavigationLink(value: Color.green){
                    Text("Fila de color")
                }
            }
            /*.listStyle(.plain)
            .navigationTitle("Tabla del \(number)")*/
            
            .listStyle(.plain)
            .navigationTitle("Ejemplo heterogéneo")
            .navigationDestination(for: String.self) { item in
                //TODO: programar la vista en caso de que la celda tenga un valor tipo String
                Text("Esta es la vista del detalle del elemento '\(item)'")
            }
            .navigationDestination(for: Color.self) { item in
                //TODO: programar la vista en caso de que la celda contenga un valor tipo Color
                item.clipShape(Circle())
            }
        }
    }
}

struct SwiftUI4Navigation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Navigation()
    }
}
