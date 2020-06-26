//
//  Constants.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    struct ProductionServer {
        static let baseURL = "https://api.nytimes.com/svc/mostpopular/v2/"
        static let apiKey = "/7.json?api-key=dylOnQnYUzEF1B9MTYYHM0MyffMPBZRi"
    }
    
    struct APIParameterKey {
        static let emailed = "emailed"
        static let shared = "shared"
        static let viewed = "viewed"
    }
    
    struct Cells {
        static let articleListCellIdentifier = "articleListCellIdentifier"
    }
    
    struct ViewControllers {
        static let articleListIdentifier = "ArticleListVC"
        static let articleIdentifier = "ArticleVC"
    }
    
    struct Storyboards {
        static let main = "Main"
    }
    
    struct Fonts {
        static let NYTMagSlabWEB_Bold = "NYTMagSlabWEB-Bold"
        static let NYTMagSansWEB_Medium = "NYTMagSansWEB-Medium"
        static let NYTMagSansWEB_Bold = "NYTMagSansWEB-Bold"
        static let NYTImperial_Regular = "NYTImperial-Regular"
        static let NYTCheltenham_Medium = "NYTCheltenham-Medium"
        static let NYTCheltenham_Bold = "NYTCheltenham-Bold"
    }
    
    struct Layout {
        static let dropCapFontSize: CGFloat = 60
        static let articleTitleFontSize: CGFloat = 45
        static let abstractFontSize: CGFloat = 18
        static let authorFontSize: CGFloat = 13
        static let dateFontSize: CGFloat = 13
        static let bodyArticleFontSize: CGFloat = 14
        static let bodyCellFontSize: CGFloat = 18
        static let captionCellFontSize: CGFloat = 10
        static let cellLineSpacing: CGFloat = 1.5
    }
    
    struct Images {
        static let nytLogo = "nytimes-logo"
    }
    
    struct DateFormatters {
        static let inputDate = "yyyy-MM-dd"
        static let outputDate = "MMMM d, yyyy"
        static let articleDateFormatter = "yyyy-MM-dd"
    }
    
    struct Literals {
        static let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed molestie rhoncus libero. Aliquam mattis id eros nec pharetra. Fusce euismod, lectus vitae imperdiet gravida, lacus diam feugiat risus, quis viverra libero est at leo. Vivamus vitae dictum augue. Integer ac metus ipsum. Ut auctor sapien vel nulla auctor, at accumsan lacus volutpat. Suspendisse potenti.\n\nNam maximus pulvinar lacus eu facilisis. Etiam eleifend sagittis turpis ut dignissim. Donec id libero vitae odio vehicula sagittis et quis erat. Nulla vestibulum massa in metus aliquet sodales. Vestibulum vestibulum, velit vitae bibendum fermentum, quam ligula imperdiet dolor, ac bibendum metus ipsum a nulla. Proin sagittis magna luctus diam faucibus fringilla. Vestibulum finibus sagittis purus nec pretium.\n\nPraesent vitae erat felis. Donec dapibus commodo quam ac dignissim. Aenean auctor rutrum malesuada. Nullam cursus mauris quis tellus pretium mollis. Duis tincidunt orci massa, ut elementum mi ullamcorper eget. Aliquam erat volutpat. Curabitur et ante quis diam convallis efficitur ut et lorem. Sed et justo condimentum, ullamcorper nulla non, faucibus enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean pellentesque consectetur leo, vel mattis erat. Nulla ornare feugiat accumsan. Aenean non egestas lacus. Curabitur sed magna turpis.\n\nMaecenas efficitur lorem non lacus mollis sagittis. Nam fringilla ante non magna pharetra pharetra. Nulla eleifend pulvinar porta. Mauris magna tortor, tristique ac venenatis eu, suscipit id est. Aenean felis nunc, volutpat ac metus a, dignissim viverra sem. Ut non nibh a elit tincidunt egestas eget fringilla nulla. Nam pellentesque nisl ex, feugiat pulvinar est vehicula eu. Suspendisse sagittis sodales auctor. Nunc auctor sem at fermentum aliquet. Nam dolor leo, volutpat a mattis vel, pellentesque quis purus. Nam vestibulum, nulla vitae porta scelerisque, eros tortor malesuada felis, sit amet euismod eros lectus nec ante.\n\nCras vitae urna nec augue dignissim sodales et et nibh. Suspendisse eget erat quis felis ultricies vulputate. Curabitur et condimentum nisl. Donec facilisis mauris at lobortis ornare. Morbi lacinia, nunc in suscipit molestie, lectus sapien finibus enim, et bibendum turpis lectus in neque. In velit libero, dignissim in lacus eu, sagittis ultrices est. Donec sollicitudin scelerisque lacus, nec cursus lorem consequat et. Nullam varius lobortis justo, vel auctor nulla varius ac. Vivamus vestibulum nulla placerat elit cursus elementum. Etiam quis odio in mi interdum posuere. Donec nec elit sed quam maximus scelerisque. Duis vitae mauris ac risus commodo blandit a et mauris.\n\nNullam et tortor hendrerit, hendrerit odio vel, ullamcorper nulla. Etiam vel dui a velit pharetra ultrices eu quis nunc. Fusce sit amet lectus ex. Cras ornare ornare dictum. Ut quis urna sed nibh fermentum commodo eget sit amet dolor. Nam placerat ullamcorper efficitur. Donec rutrum tincidunt bibendum. Suspendisse porttitor accumsan ligula, non mollis dui maximus non. Curabitur ipsum metus, volutpat sed magna non, maximus vulputate magna. Nulla non porttitor ex, a luctus mi. Suspendisse eros lacus, efficitur in lacus eget, maximus mattis neque. Fusce et hendrerit ante. Donec gravida nunc vel sem lobortis malesuada. Proin fringilla ex in tincidunt vulputate. Duis tellus nulla, sodales ac venenatis sit amet, dictum id felis. In condimentum justo id metus congue, sit amet venenatis massa dapibus.\n\nVivamus sit amet purus velit. Aenean gravida tincidunt sem et pulvinar. Ut rutrum vestibulum augue varius tincidunt. In ac dictum quam, ut ultrices nisl. Maecenas velit ante, molestie eget consequat a, sodales varius nunc. Morbi nec dignissim magna, eu iaculis nunc. Ut malesuada mauris vel magna euismod, vel tincidunt tellus semper."
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
