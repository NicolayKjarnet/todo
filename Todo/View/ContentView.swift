//
//  ContentView.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @State var todos = TodoTask.demoTasks
    
    var body: some View {
        
        VStack{
            ForEach(todos) { todo in
                
                Text(todo.title)
                
                if let note = todo.note {
                    Text(note)
                }
                    
            }
        }
        
    }
}

#Preview {
    ContentView()
}
