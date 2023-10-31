//
//  SettingsView.swift
//  Todo
//
//  Created by Øystein Engell on 31/10/2023.
//

import SwiftUI

struct SettingsView: View {
    
    
    @State var myString: String = "Denne teksten skal byttes ut"
    
    
    var body: some View {
        VStack{
            
            Text(myString)
            
            // Definere en funksjon fra utsiden av et view og sende som et parameter ved hjelp av en closure
            CusomView(){ text in
                myString = text
            }
        }
        
    }
}

#Preview {
    SettingsView()
}
