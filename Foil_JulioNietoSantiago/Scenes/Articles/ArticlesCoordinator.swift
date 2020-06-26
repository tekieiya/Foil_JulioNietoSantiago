//
//  ArticlesCoordinator.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 23/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import UIKit

class ArticlesCoordinator: Coordinator {

    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
    }
    
    func start() {
        showArticleList()
    }
}

extension ArticlesCoordinator {
    func showArticleList() {
        let storyboard = UIStoryboard(name: Constants.Storyboards.main, bundle: nil)
        guard let articleListVC = storyboard.instantiateViewController(withIdentifier: Constants.ViewControllers.articleListIdentifier) as? ArticleListViewController else { return }
        let presenter = ArticleListPresenter(articleListService: ArticleListService(), delegate: self)
        articleListVC.articleListPresenter = presenter
        navigationController.viewControllers = [articleListVC]
    }
    
    func showArticle(article: Article) {
        let storyboard = UIStoryboard(name: Constants.Storyboards.main, bundle: nil)
        guard let articleVC = storyboard.instantiateViewController(withIdentifier: Constants.ViewControllers.articleIdentifier) as? ArticleViewController else { return }
        articleVC.article = article
        navigationController.pushViewController(articleVC, animated: true)
    }
}

extension ArticlesCoordinator: ArticleListPresenterDelegate {
    func articlePressed(article: Article) {
        showArticle(article: article)
    }
}
