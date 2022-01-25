//
//  AlbumsTableViewCell.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

class AlbumsTableViewCell: UITableViewCell {
    private let albumLogo:UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    private let albumNameLabel:UILabel = {
        let label = UILabel()
        label.text = "Name Album name"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let nameArtistLabel: UILabel = {
        let label = UILabel()
        label.text = "Name Artist name"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let trackCountLabel: UILabel = {
        let label = UILabel()
        label.text = "Count Track"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stackView: UIStackView!
    override func layoutSubviews() {
        super.layoutSubviews()
        albumLogo.layer.cornerRadius = albumLogo.frame.width / 2
    }
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        self.addSubview(albumLogo)
        self.addSubview(albumNameLabel)
        stackView = UIStackView(arrangedSubViews: [nameArtistLabel,trackCountLabel],
                                axis: .horizontal,
                                spacing: 10,
                                distribution: .equalCentering)
        self.addSubview(stackView)
    }
    private func setConstrains(){
        NSLayoutConstraint.activate([
            albumLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            albumLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 15),
            albumLogo.heightAnchor.constraint(equalToConstant:60),
            albumLogo.widthAnchor.constraint(equalToConstant: 60)
        ])
        NSLayoutConstraint.activate([
            albumNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            albumNameLabel.leadingAnchor.constraint(equalTo: albumLogo.trailingAnchor, constant: 10),
            albumNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: albumNameLabel.bottomAnchor,constant: 10),
            stackView.leadingAnchor.constraint(equalTo: albumLogo.trailingAnchor, constant: 10),
            albumNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)

        ])
    }

}
