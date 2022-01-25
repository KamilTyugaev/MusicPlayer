//
//  UIViewController + Extension.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

extension UIViewController{
    func createCustomButton(selector: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "Ourprifile.png"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
    }
}
