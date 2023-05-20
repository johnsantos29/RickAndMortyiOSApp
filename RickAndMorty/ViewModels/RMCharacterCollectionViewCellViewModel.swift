//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 17/5/2023.
//

import UIKit

final class RMCharacterCollectionViewCellViewModel: Hashable, Equatable {
    let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    static func == (lhs: RMCharacterCollectionViewCellViewModel, rhs: RMCharacterCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(characterName)
        hasher.combine(characterStatus)
        hasher.combine(characterImageUrl)
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    // MARK: - Init
    
    init(characterName: String, characterStatus: RMCharacterStatus, characterImageUrl: URL?) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    // MARK: - Fetch Character Image
    
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
