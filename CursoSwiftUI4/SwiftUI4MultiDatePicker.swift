//
//  SwiftUI4MultiDatePicker.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 12/6/22.
//

import SwiftUI

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let screenSize = UIScreen.main.bounds
    
    static let halfScreenHeight = UIScreen.main.bounds.height*0.5
}

struct SwiftUI4MultiDatePicker: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    
    var body: some View {
       MultiDatePicker("Selecciona las fechas deseadas", selection: $selectedDates)
            .frame(height:UIScreen.halfScreenHeight)
    }
}

struct SwiftUI4MultiDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4MultiDatePicker()
    }
}
