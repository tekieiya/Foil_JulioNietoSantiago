//
//  ArticleListViewController.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import UIKit

class ArticleListViewController: UIViewController {
    
    @IBOutlet weak var articlesTable: UITableView!
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var articleListPresenter: ArticleListPresenter!
    fileprivate var articlesToDisplay = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        articleListPresenter.attachView(self)
        articleListPresenter.segmentedControlValue(mostPopularSelected: Constants.APIParameterKey.shared)
        articlesTable?.register(UINib(nibName: String(describing: ArticleTableViewCell.self), bundle: nil), forCellReuseIdentifier: Constants.Cells.articleListCellIdentifier)
        let imageView = UIImageView(image: UIImage(named: Constants.Images.nytLogo))
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }
    
    @IBAction func segmentedValueChanged() {
        let mostPopular: String
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            mostPopular = Constants.APIParameterKey.emailed
        case 1:
            mostPopular = Constants.APIParameterKey.shared
        case 2:
            mostPopular = Constants.APIParameterKey.viewed
        default:
            mostPopular = Constants.APIParameterKey.emailed
            break;
        }
        articleListPresenter.segmentedControlValue(mostPopularSelected: mostPopular)
    }
}

extension ArticleListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cells.articleListCellIdentifier, for: indexPath) as? ArticleTableViewCell {
            let article = articlesToDisplay[indexPath.row]
            cell.configure(article: article, index: indexPath.row + 1)
            return cell
        }
        return UITableViewCell()
    }
}

extension ArticleListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = articlesToDisplay[indexPath.row]
        articleListPresenter.selectedArticle(article: article)
    }
}

extension ArticleListViewController: ArticleListView {
    func startLoading() {
        loadingView.isHidden = false
        emptyView.isHidden = true
    }
    
    func finishLoading() {
        loadingView.isHidden = true
        emptyView.isHidden = true
    }
    
    func setArticles(_ articles: [Article]) {
        articlesToDisplay = articles
        articlesTable.reloadData()
    }
    
    func setEmpty() {
        emptyView.isHidden = false
    }
}
