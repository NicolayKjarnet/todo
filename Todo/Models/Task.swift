//
//  Task.swift
//  Todo
//
//  Created by Nicolay Kjærnet on 26/10/2023.
//

import Foundation
import UIKit

struct TodoTask: Identifiable {
    
    let id: UUID = UUID()
    let title: String
    let note: String?
    let done: Bool
    
    // Spørre Håkon om det er mulig med to konstruktører med forskjellig signatur (to initer)
    init(title: String, note: String? = nil, done: Bool = false){
        self.title = title
        self.note = note
        self.done = done
    }
    
}

extension TodoTask {
    
    static let demoTasks = [
        TodoTask.init(title: "Hente barn", done: true),
        TodoTask.init(title: "Kjøpe melk (til barn)", note: "Daniel er jÆVLIG tørst, kjøp MER ENN NOK!!"),
        TodoTask.init(title: "Vanne blomster")
    ]
    
}
