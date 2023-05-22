//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    public let value: String
    public let title: String

    init(value: String, title: String) {
        self.value = value
        self.title = title
    }
}
