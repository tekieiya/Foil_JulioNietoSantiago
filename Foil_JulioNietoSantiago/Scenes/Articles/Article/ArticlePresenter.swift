//
//  ArticlePresenter.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 23/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

class ArticlePresenter {
    weak fileprivate var articleView: ArticleView?

    init() {}
    
    func attachView(_ view: ArticleView) {
        articleView = view
    }
    
    func detachView() {
        articleView = nil
    }

    func viewLoaded(article: Article?) {
        guard let article = article else { return }
        articleView?.setUIFromData(article: article)
        guard let media = article.media.first else {
            articleView?.noImageArticle()
            return
        }
        articleView?.setImages(media: media)
    }    
}
