//
//  ViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 18.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var label:UILabel = {
        var label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = "Music Player"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var textField1:UITextField = {
        var text = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        text.placeholder = "  Input in login"
        text.textColor = .black
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.layer.cornerRadius = 15
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var textField2:UITextField = {
        var text = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        text.placeholder = "  Input in password"
        text.textColor = .black
        text.backgroundColor = .white
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.layer.cornerRadius = 15
        text.textAlignment = .justified
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let signInButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let signUpButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Music Player"
        setupViews()
        setupConstrains()
    }
    
    private func setupViews(){
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
        view.addSubview(label)
        view.addSubview(textField1)
        view.addSubview(textField2)
    }
    private func setupConstrains(){
        NSLayoutConstraint.activate([
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            signInButton.heightAnchor.constraint(equalToConstant: 60),
            signInButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            signUpButton.heightAnchor.constraint(equalToConstant: 60),
            signUpButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            textField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            textField1.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            textField1.heightAnchor.constraint(equalToConstant: 50),
            textField1.widthAnchor.constraint(equalToConstant: 300)
        ])
        NSLayoutConstraint.activate([
            textField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            textField2.topAnchor.constraint(equalTo: view.bottomAnchor,constant: -420),
            textField2.heightAnchor.constraint(equalToConstant: 50),
            textField2.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}

