//
//  String.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 25/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation
import UIKit

extension String {
    static func makeFriendlyDateForArticle(dateString: String) -> String {
        let inputDateFormatter = DateFormatter()
        inputDateFormatter.dateFormat = Constants.DateFormatters.inputDate
        let oldDate = inputDateFormatter.date(from: dateString)
        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = Constants.DateFormatters.outputDate
        return outputDateFormatter.string(from: oldDate!)
    }
}
