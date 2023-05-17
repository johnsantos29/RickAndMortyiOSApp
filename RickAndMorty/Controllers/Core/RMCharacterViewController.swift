//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 14/5/2023.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    private let characterListView = CharacterListView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"

        setUpCharacterListViewLayout()
    }
}

extension RMCharacterViewController {
    private func setUpCharacterListViewLayout() {
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            characterListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
