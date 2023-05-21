//
//  RMCharacterPhotoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import UIKit

final class RMCharacterPhotoCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterPhotoCollectionViewCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Unspported")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    public func configure(with viewModel: RMCharacterPhotoCollectionViewCellViewModel) {}
}

extension RMCharacterPhotoCollectionViewCell {
    private func layout() {}
}
