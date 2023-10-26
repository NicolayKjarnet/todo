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
    
}

extension TodoTask {
    
    static let demoTasks = [
        TodoTask.init(title: "Hente barn", note: "Vær så snill, ikke glem barna", done: false),
        TodoTask.init(title: "Kjøpe melk (til barn)", note: "Daniel er jÆVLIG tørst, kjøp MER ENN NOK!!", done: false),
        TodoTask.init(title: "Vanne blomster", note: nil, done: false)
    ]
    
}
