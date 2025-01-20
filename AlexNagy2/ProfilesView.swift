//
//  ProfilesView.swift
//  AlexNagy2
//
//  Created by Milan Mach on 20.01.2025.
//

import SwiftUI
import SwiftUIPackageDecember2024

struct ProfilesView: View {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State private var appController = AppController()
    
    var body: some View {
        Group {
            if appController.profiles.isEmpty {
                ContentUnavailableView("No Profiles", systemImage: "tray.fill")
            } else {
                List {
                    ForEach(appController.profiles) { profile in
                        VStack(alignment: .leading) {
                            Text(profile.firstName)
                            Text("\(profile.score)")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .bold()
                        }
                        
                        }
                    }
            }
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    createProfile()
                } label: {
                    Image(systemName: "plus")
                }
                
            }
        }
        .onAppear() {
            fetchProfiles()
        }
    }
    
    func createProfile() {
        Task {
            do {
                let profile = Profile(name: "New Profile", score: 12)
                try appController.createProfile(profile)
                try await appController.fetchProfiles()
            } catch {
                print("howning2\n")
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchProfiles() {
        Task {
            do {
                try await appController.fetchProfiles()
            } catch {
                print("howning\n")
                print(error.localizedDescription)
            }
        }
    }
}
