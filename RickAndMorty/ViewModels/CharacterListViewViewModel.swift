//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 16/5/2023.
//

import Foundation

struct CharacterListViewViewModel {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
