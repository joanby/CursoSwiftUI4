//
//  SwiftUI4ResizableBS.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 11/6/22.
//

import SwiftUI

struct SwiftUI4ResizableBS: View {
    
    @State private var showBottomSheet = false
    
    var body: some View {
        VStack {
            Button("Mostrar Bottom Sheet"){
                showBottomSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showBottomSheet){
                Text("Esto forma parte de la bottom sheet redimensionable.")
                    .presentationDetents([.fraction(0.2), .medium, .large])
                    .presentationDragIndicator(.hidden)
            }
            
            
            Spacer()
        }
    }
}

struct SwiftUI4ResizableBS_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4ResizableBS()
    }
}
