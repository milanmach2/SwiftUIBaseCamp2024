//
//  AppDelegate.swift
//  AlexNagy2
//
//  Created by Milan Mach on 20.01.2025.
//

import SwiftUI
import FirebaseCore

class AppDelegate : NSObject , UIApplicationDelegate {
  func application ( _ application : UIApplication ,
                   didFinishLaunchingWithOptions launchOptions : [ UIApplication . LaunchOptionsKey : Any ]? = nil ) -> Bool {
    FirebaseApp.configure ( )

    return true
  }
}
