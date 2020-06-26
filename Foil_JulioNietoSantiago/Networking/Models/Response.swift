//
//  Response.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

struct Response: Codable {
    let status: String
    let copyright: String
    let num_results: Int
    let results: [Article]
}
