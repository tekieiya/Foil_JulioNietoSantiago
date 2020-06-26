//
//  ArticleListView.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

protocol ArticleListView: NSObject {
    func startLoading()
    func finishLoading()
    func setArticles(_ articles: [Article])
    func setEmpty()
}
