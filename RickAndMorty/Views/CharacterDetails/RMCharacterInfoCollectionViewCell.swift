//
//  RMCharacterInfoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import UIKit

final class RMCharacterInfoCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterInfoCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .tertiarySystemBackground
        contentView.layer.cornerRadius = 8
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Unspported")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    public func configure(with viewModel: RMCharacterInfoCollectionViewCellViewModel) {}
}

extension RMCharacterInfoCollectionViewCell {
    private func layout() {}
}
