//
//  SwiftUI4ShareLink.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 14/6/22.
//

import SwiftUI

struct SwiftUI4ShareLink: View {
    
    private let url = URL(string: "https://cursos.frogamesformacion.com")!
    
    var body: some View {
        
        VStack{
            ShareLink(item:url){
                Label("Compartir", systemImage: "link.icloud")
                    .labelStyle(.titleAndIcon)
            }
            .presentationDetents([.medium, .large])
            
            Image(systemName: "link.icloud")
                .frame(width: 150, height:150)
                .font(.system(size: 80))
                .background(in: Rectangle())
                .backgroundStyle(.green.gradient)
                .foregroundStyle(.white.shadow(.inner(radius: 3.0, y: 5.0)))
        }
    }
}

struct SwiftUI4ShareLink_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4ShareLink()
    }
}
