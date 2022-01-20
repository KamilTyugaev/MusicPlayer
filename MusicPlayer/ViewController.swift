//
//  ViewController.swift
//  MusicPlayer

//  Created by IosDeveloper on 18.01.2022.
//𝗽

import UIKit

class ViewController: UIViewController {
    // Title label
    let musicPlayerLabel:UILabel = {
        var label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = "🎧𝙈usic 𝙋layer🎧"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //2 LoginLabel
    let labelLogin:UILabel = {
        var label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        label.text = "Login"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //Ввод Email
    let textField1:UITextField = {
        var text = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        text.placeholder = " Enter email"
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //Ввод пароля
    let textField2:UITextField = {
        var text = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        text.placeholder = " Enter password"
        text.backgroundColor = .white
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //1 кнопка для Входа
    let signInButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(goToInSearchAlbumWithSignUpButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //2 кнопка для Регистрации
    let signUpButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(goToSceneWithSignInButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Music Player"
        setupViews()
        setupConstrains()
    }
    
    //Вьюшки
    private func setupViews(){
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        //views
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
        view.addSubview(textField1)
        view.addSubview(textField2)
        //labels
        view.addSubview(musicPlayerLabel)
        view.addSubview(labelLogin)
    }
    //selector для кнопки входа в приложение после ввода логина и пароля
    @objc private func goToInSearchAlbumWithSignUpButtonTapped(){
        let searchAlbumTableController = SearchAlbumController()
        navigationController?.pushViewController(searchAlbumTableController, animated: true)
    }
    //selector для кнопки регистрации
    @objc private func goToSceneWithSignInButtonTapped(){
        let registrationViewController = RegistrationViewController()
        navigationController?.pushViewController(registrationViewController, animated: true)
    }
    
    //Констрейнты
    private func setupConstrains(){
        //1 кнопка signInButton
        NSLayoutConstraint.activate([
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            signInButton.heightAnchor.constraint(equalToConstant: 60),
            signInButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        //2 кнопка signUpButton
        NSLayoutConstraint.activate([
            signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            signUpButton.heightAnchor.constraint(equalToConstant: 60),
            signUpButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        //label Music Player(1)
        NSLayoutConstraint.activate([
            musicPlayerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            musicPlayerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            musicPlayerLabel.heightAnchor.constraint(equalToConstant: 50),
            musicPlayerLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        //label Login(2)
        NSLayoutConstraint.activate([
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            labelLogin.heightAnchor.constraint(equalToConstant: 50),
            labelLogin.widthAnchor.constraint(equalToConstant: 200)
        ])
        // textField(1)
        NSLayoutConstraint.activate([
            textField1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField1.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            textField1.heightAnchor.constraint(equalToConstant: 50),
            textField1.widthAnchor.constraint(equalToConstant: 350)
        ])
        // textField(2)
        NSLayoutConstraint.activate([
            textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField2.topAnchor.constraint(equalTo: view.bottomAnchor,constant: -420),
            textField2.heightAnchor.constraint(equalToConstant: 50),
            textField2.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
}

