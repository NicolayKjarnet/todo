//
//  ContentView.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    let printIt = ("\(TodoTask.demoTasks[2].note)")
    
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Øystein!")
            Text(printIt)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
