//
//  TodoApp.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 25/10/2023.
//

import SwiftUI
import CoreData

@main
struct TodoApp: App {
    
    // dataController holder i staten til init-metoden inne i DataController
    @StateObject var dataController = DataController()
    
    @Environment(\.managedObjectContext) var moc
    
    @State var todoTasks = [TodoTask.demoTasks]
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                // Her kunne vi sendt inn dataController i parameteret og fått informasjon rett inn i
                // ContentView, men siden vi ønsker dataen på tvers av alle views...
                ContentView()
                    .tabItem {
                        Label("Todos", systemImage: "checklist")
                    }.badge(todoTasks.count)
                
                Text("Add")
                    .tabItem {
                        Label("Add", systemImage: "plus.app")
                    }
                
                Text("Settings")
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
                
                // ... gjør vi dette i stedet: context.
                // På denne måten får alle views tilgang til databasen
            }.onAppear{print("TabView")}
                .environment(\.managedObjectContext, dataController.container.viewContext)
            
        }
    }
    
//    func updateBadgeCount() {
//             do {
//        // Fetch the count of items from the managed object context
//                    let count = try moc.count(for: NSFetchRequest<NSFetchRequestResult>(entityName: "Task"))
//                    // Update the badge count
//                        todoTasks = count
//                } catch {
//                    // Handle fetch error
//                    print("Error fetching data: \(error.localizedDescription)")
//                }
//            }
//        
//    }
}
