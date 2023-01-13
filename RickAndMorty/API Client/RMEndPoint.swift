//
//  RMEndPoint.swift
//  RickNMorty
//
//  Created by kabindra karki on 06/01/2023.
//

import Foundation


/// Represents unique API endpoints
@frozen enum RMEndPoint: String {
    /// Enpoints to get character info
    case character // "character"
    /// Enpoints to get location info
    case location
    /// Enpoints to get episode info
    case episode
}
