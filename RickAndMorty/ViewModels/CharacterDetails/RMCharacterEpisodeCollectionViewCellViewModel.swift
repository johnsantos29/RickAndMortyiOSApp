//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    private let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}
