//
//  AlexNagy2App.swift
//  AlexNagy2
//
//  Created by Milan Mach on 17.01.2025.
//

import SwiftUI
import FirebaseCore


@main
struct AlexNagy2App: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor( AppDelegate.self ) var delegate

    
    @State private var appController = AppController()
    

  var body : some Scene {
    WindowGroup {
      NavigationStack {
          ProfilesView ()
              
      }
      .environment(appController)
    }
  }
}
