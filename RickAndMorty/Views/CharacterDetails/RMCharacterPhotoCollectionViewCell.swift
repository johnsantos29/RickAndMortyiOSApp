//
//  RMCharacterPhotoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 22/5/2023.
//

import UIKit

final class RMCharacterPhotoCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterPhotoCollectionViewCell"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        layout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Unspported")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }

    public func configure(with viewModel: RMCharacterPhotoCollectionViewCellViewModel) {
        viewModel.fetchImage { [weak self] result in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self?.imageView.image = UIImage(data: data)
                }
            case .failure:
                break
            }
        }
    }
}

extension RMCharacterPhotoCollectionViewCell {
    private func layout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
}
