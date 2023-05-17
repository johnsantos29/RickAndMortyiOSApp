//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 17/5/2023.
//

import UIKit

final class RMCharacterCollectionViewCellViewModel {
    let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?

    public var characterStatusText: String {
        return characterStatus.rawValue
    }

    // MARK: - Init

    init(characterName: String, characterStatus: RMCharacterStatus, characterImageUrl: URL?) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // todo (js) - abstract to image manager
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
