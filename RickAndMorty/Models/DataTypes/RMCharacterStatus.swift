//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 15/5/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
