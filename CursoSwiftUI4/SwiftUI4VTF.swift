//
//  SwiftUI4VTF.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 15/6/22.
//

import SwiftUI


struct GroupView: View {
    var body: some View {
        ViewThatFits{
            VStack{
                Button(action: {}){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                Button(action: {}){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 300)
            
            
            HStack{
                Button(action: {}){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.leading)
                
                Button(action: {}){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.trailing)
            }
            .frame(maxHeight: 100)
        }
    }
}



struct SwiftUI4VTF: View {

    var body: some View {
        VStack{
            GroupView()
                .frame(height:150)
            GroupView()
                .frame(height: 100)
        }
    }
}

struct SwiftUI4VTF_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4VTF()
    }
}
