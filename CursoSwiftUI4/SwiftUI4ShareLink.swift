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
        ShareLink(item:url){
            Label("Compartir", systemImage: "link.icloud")
                .labelStyle(.titleAndIcon)
        }
        .presentationDetents([.medium, .large])
    }
}

struct SwiftUI4ShareLink_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4ShareLink()
    }
}
