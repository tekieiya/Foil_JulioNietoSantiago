//
//  Media.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

struct Media: Codable {
    let type: String
    let subtype: String
    let caption: String
    let copyright: String
    let approved_for_syndication: Int
    let media_metadata: [Media_metadata]
}

extension Media {
    enum CodingKeys: String, CodingKey {
        case type
        case subtype
        case caption
        case copyright
        case approved_for_syndication
        case media_metadata = "media-metadata"
    }
}

struct Media_metadata: Codable {
    let url: String?
    let format: String?
    let height: Int?
    let width: Int?
}
