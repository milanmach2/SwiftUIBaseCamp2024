//
//  MyTextField.swift
//  AlexNagy2
//
//  Created by Milan Mach on 17.01.2025.
//

import SwiftUI

struct MyTextField: View {
    let placeholder: String
    @Binding var title: String
    
    init(placeholder: String, title: Binding<String>) {
        self.placeholder = placeholder
        _title = title
    }
    
    
    var body: some View {
        TextField(text: $title){
            Text(placeholder)
        }
            .textFieldStyle(.roundedBorder)
    }
}


