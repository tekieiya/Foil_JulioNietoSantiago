//
//  ArticleListPresenter.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

protocol ArticleListPresenterDelegate: class {
    func articlePressed(article: Article)
}

class ArticleListPresenter {
    fileprivate let articleListService: ArticleListService
    weak fileprivate var articleListView: ArticleListView?
    weak var delegate: ArticleListPresenterDelegate?

    init(articleListService: ArticleListService, delegate: ArticleListPresenterDelegate) {
        self.articleListService = articleListService
        self.delegate = delegate
    }
    
    func attachView(_ view: ArticleListView) {
        articleListView = view
    }
    
    func detachView() {
        articleListView = nil
    }

    func segmentedControlValue(mostPopularSelected: String) {
        articleListView?.startLoading()
        articleListService.deliverArticles(mostPopular: mostPopularSelected) { (articles, error) in
            self.articleListView?.finishLoading()
            if let _ = error {
                self.articleListView?.setEmpty()
                return
            }
            if articles.isEmpty {
                self.articleListView?.setEmpty()
            } else {
                self.articleListView?.setArticles(articles)
            }
        }
    }
    
    func selectedArticle(article: Article) {
        delegate?.articlePressed(article: article)
    }
}
