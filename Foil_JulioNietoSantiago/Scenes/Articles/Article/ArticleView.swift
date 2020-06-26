//
//  ArticleView.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 23/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

protocol ArticleView: NSObject {
    func setUIFromData(article: Article)
    func setImages(media: Media)
    func noImageArticle()
}
