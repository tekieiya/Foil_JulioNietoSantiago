//
//  ArticleListService.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation

typealias ArticleResult = ([Article], Error?) -> Void

class ArticleListService {
    
    func deliverArticles(mostPopular: String, resultData: @escaping ArticleResult) {
        APIClient.getArticles(mostPopular: mostPopular) { result in
            switch result {
            case .success(let articles):
                resultData(articles.results, nil)
            case .failure(let error):
                resultData([], error)
            }
        }
    }
}
