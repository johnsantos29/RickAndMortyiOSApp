//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 20/5/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter

    enum SectionType: CaseIterable {
        case photo
        case information
        case episodes
    }
    
    public let sections = SectionType.allCases
    
    // MARK: - Init

    init(character: RMCharacter) {
        self.character = character
    }

    private var requestUrl: URL? {
        return URL(string: character.url)
    }

    public var title: String {
        return character.name.uppercased()
    }
}
