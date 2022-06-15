//
//  SwiftUI4Grid.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 15/6/22.
//

import SwiftUI

struct IconView: View{
    var systemName = ""
    var color = Color.green
    var maxHeight = 100.0
    
    var body: some View{
        VStack{
            Image(systemName: systemName)
                .frame(maxWidth: .infinity, maxHeight: maxHeight)
                .padding()
                .font(.system(size: 40))
                .background(in: Rectangle())
                .backgroundStyle(color.gradient)
                .foregroundStyle(.white.shadow(.inner(radius: 3.0, y: 5.0)))
        }
    }
}

struct SwiftUI4Grid: View {
    var body: some View {
        Grid{
            GridRow{
                IconView(systemName: "car", color: .green)
                IconView(systemName: "lock", color: .yellow)
                Grid{
                    GridRow{
                        IconView(systemName: "pc", color: .red, maxHeight: 50.0)
                        IconView(systemName: "wifi", color: .indigo, maxHeight: 50.0)
                    }
                    GridRow{
                        IconView(systemName: "pc", color: .red, maxHeight: 50.0)
                        IconView(systemName: "wifi", color: .indigo, maxHeight: 50.0)
                    }
                }
            }
            
            GridRow{
                IconView(systemName: "lungs", color: .orange, maxHeight: 30.0)
                    .gridCellColumns(4)
            }
            
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                    .gridCellColumns(1)
                IconView(systemName: "wifi", color: .indigo)
                    .gridCellColumns(3)
            }
            GridRow{
                IconView(systemName: "creditcard", color: .brown, maxHeight: 150.0)
                    .gridCellColumns(4)
            }
        }
    }
}

struct SwiftUI4Grid_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Grid()
    }
}
