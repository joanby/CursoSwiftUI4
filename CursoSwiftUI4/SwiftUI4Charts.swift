//
//  SwiftUI4Charts.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 11/6/22.
//

import SwiftUI
import Charts

struct SwiftUI4Charts: View {
    
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [4809, 11463, 5685, 6774, 5058, 6990, 4079]
    
    var body: some View {
        Chart{
            ForEach(weekdays.indices, id: \.self){ idx in
                BarMark(x: .value("Día", weekdays[idx]) ,
                        y: .value("Pasos", steps[idx])
                )
                .foregroundStyle(by: .value("Día", weekdays[idx]))
                .annotation{
                    Text("\(steps[idx])")
                }
                
                PointMark(x: .value("Día", weekdays[idx]) ,
                         y: .value("Pasos", steps[idx]))
                    .foregroundStyle(.black)
                    .lineStyle(StrokeStyle(lineWidth: 5))
            }
            
            RuleMark(y: .value("Objetivo Diario", 10000))
                .foregroundStyle(.red)
            
        }
    }
}

struct SwiftUI4Charts_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Charts()
    }
}
