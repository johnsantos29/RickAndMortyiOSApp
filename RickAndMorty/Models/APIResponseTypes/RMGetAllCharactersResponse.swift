//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 16/5/2023.
//

import Foundation

/// Type to match the get all characters api response
struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
