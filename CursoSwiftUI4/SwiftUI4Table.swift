//
//  SwiftUI4Table.swift
//  CursoSwiftUI4
//
//  Created by Juan Gabriel Gomila Salas on 14/6/22.
//

import SwiftUI



struct Course: Identifiable {
    let id: UUID = UUID()
    
    let name: String
    let topic: String
    let hours: String
    let price: String
}


struct SwiftUI4Table: View {
    
    var courses: [Course] = [
        Course(name: "Aprende Matemáticas desde Cero - Aritmética", topic: "Matemáticas", hours: "25,5h", price: "39.99€"),
        Course(name: "Aprende Matemáticas desde Cero - Fundamentos del Álgebra", topic: "Matemáticas", hours: "49,5h", price: "39.99€"),
        Course(name: "Aprende Matemáticas desde Cero - Álgebra Matricial", topic: "Matemáticas", hours: "20h", price: "39.99€"),
        Course(name: "Curso completo de Python de la A a la Z", topic: "Python", hours: "55h", price: "99.99€"),
        Course(name: "Fundamentos de Android con Kotlin desde Cero", topic: "Android", hours: "12h", price: "39.99€"),
        Course(name: "15 días de Power BI - El bootcamp completo de Power BI", topic: "Business Intelligence", hours: "24h", price: "69.99€")
    
    ]
    
    @State private var selectedCourse = Set<Course.ID>()
    
    @State private var sortOrder = [KeyPathComparator(\Course.name)]
    
    var body: some View {
        VStack{
            Text("Cursos seleccionados: \(selectedCourse.count)")
                .bold()
           
            Table(courses,
                  selection: $selectedCourse,
                  sortOrder: $sortOrder) {
                TableColumn("Título del Curso", value:\.name)
                TableColumn("Temática", value: \.topic)
                TableColumn("Horas", value: \.hours)
                TableColumn("Precio", value: \.price)
                
            }
            /*.onChange(of: sortOrder){
              courses = courses.sorted(using: $0)
            }*/
            
        }
    }
}

struct SwiftUI4Table_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI4Table()
    }
}
