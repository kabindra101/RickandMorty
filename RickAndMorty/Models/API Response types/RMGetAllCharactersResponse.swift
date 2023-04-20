//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by kabindra karki on 07/02/2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: Info
    let results: [RMCharacter]
}

struct Info: Codable {
    let count: Int?
    let pages: Int?
    let next: String?
    let previous: String?
    
}
