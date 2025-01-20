//
//  ContentView.swift
//  AlexNagy2
//
//  Created by Milan Mach on 17.01.2025.
//

import SwiftUI
import SwiftUIPackageDecember2024

struct ContentView: View {
    
    //@State private var viewModel: ViewModel = ViewModel()
    
    @Environment(AppController.self) private var appController
    
    //@State internal var profile: Profile = Profile()
    
    var body: some View {
        
        @Bindable var appController = appController
        VStack {
            
                
            Text(appController.profile.firstName)
//            TextField("enter title", text: $title)
//                .textFieldStyle(.roundedBorder)
            MyTextField(placeholder: "name", title: $appController.profile.firstName)
            Button("tap me") {
                appController.buttonTapped()
            }
               
        }
        .padding()
        .onChange(of: appController.profile.firstName) { _, newValue in
            print("new value: \(newValue)")
            
        }
    }
    
    // MARK: - action
//    func buttonTapped() {
//        profile.name = "2025"
//    }
    
}

#Preview {
   
    ContentView()
        .environment(AppController())
}


extension ContentView {
    @Observable
    class ViewModel {
        var profile: Profile = Profile()
        
        func buttonTapped() {
            self.profile.firstName = "2025"
        }
    }
}



