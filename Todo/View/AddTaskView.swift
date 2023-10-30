//
//  AddTaskView.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 26/10/2023.
//

import SwiftUI

struct AddTaskView: View {
    
    // Hva skal med?
    // 1. TextFields
    // 2. Enum
    // 3. Kategorier (enum?)
    // 4. Modellklasse for objektene inne i programmet
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var title = ""
    @State var notes = ""

    
    var body: some View {
        Form {
            
            Section("Opprett todo note") {
                TextField("Title", text: $title)
                TextField("notes", text: $notes)
            }
            
            Section {
                Button("Lagre") {
                    presentationMode.wrappedValue.dismiss()
                    self.selectedTab
                }
            }
            //        }.alert(isPresented: $isShowingError) {
            //            Alert(title:
            //                    Text("Manglende felter: "),
            //                  message: Text("\(validationErrors.text)"))
            //        }
            //        .padding(.top)
        }
    }
    
}

#Preview {
    AddTaskView()
}
