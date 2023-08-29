//
//  SwiftUI4LayoutDynamic.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 15/6/22.
//

import SwiftUI

struct SwiftUI4LayoutDynamic: View {
    
 
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    var body: some View {
        
        let layout = (horizontalSizeClass == .compact) ?
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
        .animation(.default, value: horizontalSizeClass)
        
    }
}

struct SwiftUI4LayoutDynamic_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4LayoutDynamic()
    }
}
