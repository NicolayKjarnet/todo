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
    
    
    init(title: String, note: String? = nil, done: Bool = false){
        self.title = title
        self.note = note
        self.done = done
    }    
    
    
}

extension TodoTask {
    
    static let demoTasks = [
        TodoTask.init(title: "Hente barn"),
        TodoTask.init(title: "Kjøpe melk", note: "I butikken"),
        TodoTask.init(title: "Vanne blomster", note: "hjemme")
    ]
    
}
