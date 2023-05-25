//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    private let episodeDataUrl: URL?
    
    private var isFetching = false
    
    private var episode: RMEpisode?
    
    // MARK: - Init
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
    
    public func fetchEpisode() {
        guard !isFetching else {
            return
        }
        
        guard let url = episodeDataUrl,
              let request = RMRequest(url: url)
        else {
            return
        }
        
        isFetching = true
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { [weak self] result in
            switch result {
            case .success(let model):
                self?.episode = model
            case .failure(let failure):
                print(String(describing: failure))
            }
        }
    }
}
