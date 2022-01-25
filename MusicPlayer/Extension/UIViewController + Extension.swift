//
//  UIViewController + Extension.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

extension UIViewController{
//    func createCustomButton(selector: Selector) -> UIBarButtonItem {
//
//        let button = UIButton(type: .system)
//        button.setImage(UIImage(systemName: "ToDoManager2.jpeg"), for: .normal)
//        button.tintColor = .black
//        button.addTarget(self, action: selector, for: .touchUpInside)
//
//        let menuBarItem = UIBarButtonItem(customView: button)
//        return menuBarItem
//    }
    //можно и так загрузить изображение в NavigationBar для перехода в профиль
    
        func createCustomButton(selector: Selector) -> UIBarButtonItem{
           let buttonForNavigatorBar = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
           let imageViewProfileBar = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
           imageViewProfileBar.image = UIImage(named: "Ourprofile.png")
           imageViewProfileBar.layer.cornerRadius = 20
           imageViewProfileBar.layer.masksToBounds = true
           buttonForNavigatorBar.addSubview(imageViewProfileBar)
           let rightBarButton = UIBarButtonItem(customView: buttonForNavigatorBar)
           buttonForNavigatorBar.addTarget(self,action: selector, for: .touchUpInside)
           self.navigationItem.rightBarButtonItem = rightBarButton
        return rightBarButton
       }
}
