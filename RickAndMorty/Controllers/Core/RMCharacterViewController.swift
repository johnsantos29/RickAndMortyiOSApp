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

        let request = RMRequest(endpoint: .character,
                                queryParameters: [
                                    URLQueryItem(name: "name", value: "Rick"),
                                    URLQueryItem(name: "status", value: "alive"),
                                ])

        print("request url = \(request.url) ")
    }
}
