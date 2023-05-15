//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 15/5/2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    let httpMethod = "GET"
    
    /// API Constants
    private enum Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components, if any
    private let pathComponents: Set<String>
    
    /// Query arguments, if any
    private let queryParameters: [URLQueryItem]
   
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = "\(Constants.baseUrl)/\(endpoint.rawValue)"
        
        /// Append path components
        ///  i.e. endpoint/path1/path2/path3
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            
            /// Append query parameters separated by &
            ///  i.e. name1=value1&name2=value2
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed and constructed API URL
    var url: URL? {
        return URL(string: urlString)
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of query parameters
    init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
