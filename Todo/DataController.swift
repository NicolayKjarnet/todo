//
//  DataController.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 26/10/2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    // container-variablene holder i informasjonen fra Model-klassen
    // NSPersistentContainer gir tilgang til metoder som
    // brukes til å styre Core Data stacken
    let container = NSPersistentContainer(name: "Model")
    
    // Init fordi dette er en klasse som må initialiseres
    init() {
        
        container.loadPersistentStores{ description, error in
            if let error{
                print(error)
            }
            // Her printes filstien til sqlite-filen som er innholdet i selve databasen
            print(description)
        }
        
    }
}
