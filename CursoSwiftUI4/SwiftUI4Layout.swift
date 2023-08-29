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
        
        //  MODIFICACIÓN:
        // HStack y VStack han cambiado ahora por
        // _HStackLayout y _VStackLayout
        let layout = changeLayout ?
        AnyLayout(_HStackLayout(spacing: 10)) :
        AnyLayout(_VStackLayout(spacing: 10))
        
        
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
