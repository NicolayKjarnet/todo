//
//  AddTaskView.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 26/10/2023.
//

import SwiftUI
import CoreData

struct AddTaskView: View {
    
    // Hva skal med?
    // 1. TextFields
    // 2. Enum
    // 3. Kategorier (enum?)
    // 4. Modellklasse for objektene inne i programmet
    // Spørre Håkon om det er lurt å gå tilbake til eldre versjon av Xcode før eksamen (vise han #Preview som eksempel)
    // 6. Error handling og input-validering (se på Håkons kode i AddStoreView)
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var title = ""
    @State var notes = ""
    
    @Environment(\.managedObjectContext) var moc
    @State var todos = TodoTask.demoTasks
    
    var body: some View {
        Form {
            
            Section("Opprett todo note") {
                TextField("Title", text: $title)
                TextField("notes", text: $notes)
            }
            
            Section {
                Button("Lagre") {
                    didTapSaveButton()
                }
            }
        }
    }
    
    func didTapSaveButton(){
        
        do {
            
            let entityDescription = try NSEntityDescription.entity(forEntityName: "Task", in: moc)!
            
            let todoTask = Task(entity: entityDescription, insertInto: moc)
            
            todoTask.title = title
            todoTask.notes = notes
            todoTask.done = false
            
            try moc.save()
            
        } catch let error {
            print(error)
        }
        
    }
}


#Preview {
    AddTaskView()
}
