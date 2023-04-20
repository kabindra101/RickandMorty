//
//  RMRequest.swift
//  RickNMorty
//
//  Created by kabindra karki on 06/01/2023.
//

import Foundation

/// object that represent a single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    ///Desired endpoint
    private let endpoints: RMEndPoint
    
    /// Path component for API, if any
    private let pathComponent: [String]
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoints.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed and constucted api url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoints: Target endpoint
    ///   - pathComponent: Collection of path component
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoints: RMEndPoint,
        pathComponent: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoints = endpoints
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoints: .character)
}
