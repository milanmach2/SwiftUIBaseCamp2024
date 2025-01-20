//
//  AppController.swift
//  AlexNagy2
//
//  Created by Milan Mach on 17.01.2025.
//
import SwiftUI
import SwiftUIPackageDecember2024

@Observable
class AppController {
    var profile: Profile = Profile()
    
    func buttonTapped() {
        self.profile.firstName = "2025"
    }
    
    // MARK: - Firebase
    
    var profiles : [Profile] = []
    
    func createProfile(_ profile: Profile) throws { try APIService.createProfile(profile)
    }
    
    func fetchProfiles() async throws {
        profiles = try await APIService.fetchProfiles()
    }
}
