//
//  SwiftUI4ExpandableText.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 14/6/22.
//

import SwiftUI

struct SwiftUI4ExpandableText: View {
    
    @State private var inputText = ""
    
    var body: some View {
        Form {
            Section("¿Qué te parece nuestro curso?"){
                TextField("Escribe aquí un comentario. ", text: $inputText, axis: .vertical)
                    .lineLimit(2...4)
            }
        }
    }
}

struct SwiftUI4ExpandableText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4ExpandableText()
    }
}
