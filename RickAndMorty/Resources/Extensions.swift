//
//  Extensions.swift
//  RickAndMorty
//
//  Created by kabindra karki on 07/02/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
