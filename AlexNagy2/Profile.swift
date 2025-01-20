//
//  Profile.swift
//  AlexNagy2
//
//  Created by Milan Mach on 17.01.2025.
//

//import SwiftUI
//
//struct Profile: Codable, Identifiable {
//    
//    var id = UUID().uuidString
//    var firstName: String
//    var score: Int
//    
//    enum CodingKeys: String, CodingKey {
//        case name = "first_name"
//        case score
//    }
//    
////    init(from decoder: Decoder) throws {
////        let container = try decoder.container(keyedBy: CodingKeys.self)
////        self.name = try container.decode(String.self, forKey: .name)
////    }
//    
//    init(from decoder: Decoder) throws {
//            
//            do {
//                let container = try decoder.container(keyedBy: CodingKeys.self)
//                firstName = try container.decodeIfPresent(String.self, forKey: .name) ?? "n/a"
//                score = try container.decodeIfPresent(Int.self, forKey: .score) ?? 0
//                    
//                
//            } catch {
//                print("Error decoding Profile: \(error._code)")
//                firstName = "N/A" // Default fallback if an error occurs
//                if error._code == 4864 {
//                    let container = try decoder.container(keyedBy: CodingKeys.self)
//                    let intName = try container.decodeIfPresent(Int.self, forKey: .name) ?? 0
//                    firstName = "\(intName)"
//                    score = try container.decodeIfPresent(Int.self, forKey: .score) ?? 0
//                } else {
//                    let container = try decoder.container(keyedBy: CodingKeys.self)
//                    firstName = "N/A"
//                    score = try container.decodeIfPresent(Int.self, forKey: .score) ?? 0
//                }
//            }
//        }
//        
//    
//    func encode(to encoder: any Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.firstName, forKey: .name)
//        try container.encodeIfPresent(self.score, forKey: .score)
//    }
//    
//    
//    init(name: String = "", score: Int = 0) {
//        self.firstName = name
//        self.score = score
//    }
//}
//
