//
//  ArticleViewController.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 23/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var aspectRatio: NSLayoutConstraint!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var section: UILabel!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var abstract: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var body: UITextView!
    @IBOutlet weak var heightBody: NSLayoutConstraint!

    fileprivate let articlePresenter = ArticlePresenter()
    var article: Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        articlePresenter.attachView(self)
        articlePresenter.viewLoaded(article: article)
        navigationController?.navigationBar.tintColor = .black
    }
}

extension ArticleViewController: ArticleView {
    func setUIFromData(article: Article) {
        section.text = article.section.uppercased()
        articleTitle.text = article.title
        articleTitle.font = UIFont(name: Constants.Fonts.NYTMagSlabWEB_Bold, size: Constants.Layout.articleTitleFontSize)
        abstract.text = article.abstract
        abstract.font = UIFont(name: Constants.Fonts.NYTMagSansWEB_Medium, size: Constants.Layout.abstractFontSize)
        author.text = article.byline
        author.font = UIFont(name: Constants.Fonts.NYTMagSansWEB_Bold, size: Constants.Layout.authorFontSize)
        date.text = String.makeFriendlyDateForArticle(dateString: article.published_date)
        date.font = UIFont(name: Constants.Fonts.NYTMagSansWEB_Medium, size: Constants.Layout.dateFontSize)
        NSLayoutConstraint.deactivate([heightBody])
        UITextView.dropcap(textView: body, text: Constants.Literals.loremIpsum)
        body.font = UIFont(name: Constants.Fonts.NYTImperial_Regular, size: Constants.Layout.bodyArticleFontSize)
    }
    
    func setImages(media: Media) {
        guard let mediadata = media.media_metadata.last else { return }
        guard let url = mediadata.url else { return }
        guard let width = mediadata.width else { return }
        guard let height = mediadata.height else { return }
        let newAspectRatio = CGFloat(height)/CGFloat(width)
        image.downloadImageFrom(link: url, contentMode: .scaleAspectFit)
        NSLayoutConstraint.deactivate([aspectRatio])
        image.addConstraint(NSLayoutConstraint(item: image as Any,
                                               attribute: .height,
                                               relatedBy: .equal,
                                               toItem: image,
                                               attribute: .width,
                                               multiplier: newAspectRatio,
                                               constant: 0))
        caption.text = media.caption
    }
    
    func noImageArticle() {
        stackView.removeArrangedSubview(image)
    }
}
