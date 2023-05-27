//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 28/5/2023.
//

import UIKit

/// View Controller to show detail about a single episode
final class RMEpisodeDetailViewController: UIViewController {
    private let url: URL?
    
    // MARK: - Init

    init(url: URL?) {
        self.url = url
        
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Episode"
        view.backgroundColor = .systemBackground
    }
}
