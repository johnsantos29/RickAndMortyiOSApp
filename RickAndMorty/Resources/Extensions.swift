//
//  Extensions.swift
//  RickAndMorty
//
//  Created by John Erick Santos on 16/5/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
