//
//  UITextView.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 25/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation
import UIKit

extension UITextView {
    static func dropcap(textView: UITextView, text: String) {
        let originalBody = text
        let firstLetterBody = originalBody.first
        let restBody = originalBody.dropFirst()
        let dropCap = UILabel()
        dropCap.text = String(firstLetterBody!)
        dropCap.font = UIFont(name: Constants.Fonts.NYTImperial_Regular, size: Constants.Layout.dropCapFontSize)
        dropCap.backgroundColor = .lightText
        dropCap.sizeToFit()
        textView.addSubview(dropCap)
        textView.textContainer.exclusionPaths = [
          UIBezierPath(rect: dropCap.frame)
        ]
        textView.text = String(restBody)
        textView.sizeToFit()
        textView.isScrollEnabled = false
    }
}
