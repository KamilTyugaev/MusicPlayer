//
//  UIStackView + Extension.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

extension UIStackView{
    convenience init(arrangedSubViews:[UIView], axis:NSLayoutConstraint.Axis, spacing:CGFloat,distribution:UIStackView.Distribution) {
        self.init(arrangedSubviews:arrangedSubViews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
