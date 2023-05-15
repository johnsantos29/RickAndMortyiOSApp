//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 14/5/2023.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"

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
