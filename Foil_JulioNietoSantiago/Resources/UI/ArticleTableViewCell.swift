//
//  ArticleTableViewCell.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 21/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var imageThumbnail: UIImageView!
    @IBOutlet weak var caption: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(article: Article, index: Int) {
        category.text = "\(index). "+article.section
        if let url = article.media.first?.media_metadata.last?.url {
            imageThumbnail.downloadImageFrom(link: url, contentMode: .scaleAspectFill)
        }
        let attrs1 = [NSAttributedString.Key.font : UIFont(name: Constants.Fonts.NYTCheltenham_Bold, size: Constants.Layout.bodyCellFontSize), NSAttributedString.Key.foregroundColor : UIColor.gray]
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: Constants.Fonts.NYTCheltenham_Medium, size: Constants.Layout.bodyCellFontSize), NSAttributedString.Key.foregroundColor : UIColor.lightGray]
        let attributedString1 = NSMutableAttributedString(string:article.title+"  ", attributes:attrs1 as [NSAttributedString.Key : Any])
        let attributedString2 = NSMutableAttributedString(string:article.abstract, attributes:attrs2 as [NSAttributedString.Key : Any])
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = Constants.Layout.cellLineSpacing
        attributedString1.append(attributedString2)
        body.attributedText = attributedString1
        caption.text = article.media.first?.caption
        caption.font = UIFont(name: Constants.Fonts.NYTCheltenham_Medium, size: Constants.Layout.captionCellFontSize)
        caption.textColor = .lightGray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
