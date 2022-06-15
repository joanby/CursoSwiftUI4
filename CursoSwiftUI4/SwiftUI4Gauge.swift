//
//  SwiftUI4Gauge.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 15/6/22.
//

import SwiftUI

struct SwiftUI4Gauge: View {
    
    @State private var progress = 67.8
    private let min = 0.0
    private let max = 100.0
    
    var body: some View {
        Gauge(value: progress, in: min...max) {
            Text("Estado de la Carga")
        } currentValueLabel: {
            Text("\(progress.formatted(.number))%")
                .bold()
                .foregroundColor(Color.green)
                .font(.system(size: 12))
        } minimumValueLabel: {
            Text(min.formatted(.percent))
                .font(.system(size: 6))
        } maximumValueLabel: {
            Text(Int(max).formatted(.percent))
                .font(.system(size: 6))
        }
        .tint(.green)
        .gaugeStyle(.accessoryCircular)
        .scaleEffect(2.5)
    }
}

struct SwiftUI4Gauge_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Gauge()
    }
}
