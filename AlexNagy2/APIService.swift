//
//  APIService.swift
//  AlexNagy2
//
//  Created by Milan Mach on 20.01.2025.
//

import SwiftUI
import FirebaseFirestore
import SwiftUIPackageDecember2024

struct APIService {
    static func createProfile(_ profile: Profile) throws {
        let reference = Firestore.firestore().collection("profiles").document()
        try reference.setData(from: profile)
    }
    
    static func fetchProfiles() async throws -> [Profile] {
        let reference = Firestore.firestore().collection("profiles")
        let snapshot = try await reference.getDocuments()
        
        let documents = snapshot.documents.compactMap { snapshot in
            try? snapshot.data(as: Profile.self)
        }
        return documents
    }
    
    
    
}
