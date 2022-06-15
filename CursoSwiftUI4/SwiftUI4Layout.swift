//
//  SwiftUI4Layout.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 15/6/22.
//

import SwiftUI

struct SwiftUI4Layout: View {
    
    @State private var changeLayout = false
    
    
    
    var body: some View {
        
        let layout = changeLayout ?
        AnyLayout(HStack(spacing: 10)) :
        AnyLayout(VStack(spacing: 10))
        
        
        layout{
            Image("JB")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 350, maxHeight: 250)
                .clipped()
            
            Image("biblioteca_plain")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 350, maxHeight: 250)
                .clipped()
            
            Image("JB")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 350, maxHeight: 250)
                .clipped()
        }
        .animation(.default, value: changeLayout)
        .onTapGesture {
            changeLayout.toggle()
        }
    }
}

struct SwiftUI4Layout_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Layout()
    }
}
