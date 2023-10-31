//
//  CusomView.swift
//  Todo
//
//  Created by Øystein Engell on 31/10/2023.
//

import SwiftUI

struct CusomView: View {
    
    
    var closure : ( (String) -> () )

    
    
    var body: some View {
        Button(action: {
            
            
            closure("Hei fra custom view")
            
            
            
        }, label: {
            Text("CustomButton")
        })
    }
}

#Preview {
    CusomView() { _ in 
        
    }
}
