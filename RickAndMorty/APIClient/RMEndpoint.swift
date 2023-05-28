//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 15/5/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
