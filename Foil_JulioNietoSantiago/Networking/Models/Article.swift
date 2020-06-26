//
//  Article.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

struct Article: Codable {
    let uri: String
    let url: String
    let id: Int
    let asset_id: Int
    let source: String
    let published_date: String
    let updated: String
    let section: String
    let subsection: String
    let nytdsection: String
    let adx_keywords: String
    let column: String?
    let byline: String
    let type: String
    let title: String
    let abstract: String
    let des_facet: [String]
    let org_facet: [String]
    let per_facet: [String]
    let geo_facet: [String]
    let media: [Media]
    let eta_id : Int
}
