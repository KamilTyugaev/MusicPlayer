//
//  AlbumViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

class AlbumViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        title = "Albums"
        profileImageForNavigationBar()
    }
    
    private func profileImageForNavigationBar(){
        let buttonForNavigatorBar = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.image = UIImage(named: "Ourprofile.png")
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        buttonForNavigatorBar.addSubview(imageView)
        let rightBarButton = UIBarButtonItem(customView: buttonForNavigatorBar)
        buttonForNavigatorBar.addTarget(self, action: #selector(goToInProfileWithItem), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    @objc private func goToInProfileWithItem(){
        let profilController = ProfileViewController()
        navigationController?.pushViewController(profilController, animated: true)
    }

}
