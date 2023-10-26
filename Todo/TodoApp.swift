//
//  TodoApp.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 25/10/2023.
//

import SwiftUI

@main
struct TodoApp: App {
    
    // dataController holder i staten til init-metoden inne i DataController
    @StateObject var dataController = DataController()
    
    @Environment(\.managedObjectContext) var moc
    
    var body: some Scene {
        WindowGroup {
            VStack{
                // Her kunne vi sendt inn dataController i parameteret og fått informasjon rett inn i
                // ContentView, men siden vi ønsker dataen på tvers av alle views...
                ContentView()
                // ... gjør vi dette i stedet: context.
                // På denne måten får alle views tilgang til databasen
            }.environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
