//
//  ProfileViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 20.01.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your profile"
        setupViews()
        setupConstraints()
    }
    
//    private let first
    // Title label
   private let musicPlayerLabel:UILabel = {
        var label = UILabel()
        label.text = "🎧𝙈usic 𝙋layer🎧"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let profilLabel:UILabel = {
        var label = UILabel()
        label.text = "General information"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    private func setupViews(){
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        view.addSubview(musicPlayerLabel)
        view.addSubview(profilLabel)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //констрейнты
    private func setupConstraints(){
        // 1 Заголовок MusicPlayer
        NSLayoutConstraint.activate([
            musicPlayerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            musicPlayerLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 150),
            musicPlayerLabel.heightAnchor.constraint(equalToConstant: 50),
            musicPlayerLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        // 2 label( Основная информация о профилe)
        NSLayoutConstraint.activate([
            profilLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profilLabel.topAnchor.constraint(equalTo: musicPlayerLabel.topAnchor,constant: 150),
            profilLabel.heightAnchor.constraint(equalToConstant: 50),
            profilLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}
