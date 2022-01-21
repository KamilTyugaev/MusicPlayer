//
//  ViewController.swift
//  MusicPlayer

//  Created by IosDeveloper on 18.01.2022.
//𝗽

import UIKit

class AuthViewController: UIViewController {
    //scrolView
    private let scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    //view
    private let backgroundView:UIView = {
       let view = UIView()
       view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
       view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    //1 кнопка для Входа
    private let signInButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //2 кнопка для Регистрации
    private let signUpButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
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
    
    //2 LoginLabel
    private let labelLogin:UILabel = {
        var label = UILabel()
        label.text = "Login"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //Ввод Email
    private let emailTextField:UITextField = {
        var text = UITextField()
        text.placeholder = " Enter email"
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //Ввод пароля
    private let passworTextField:UITextField = {
        var text = UITextField()
        text.placeholder = " Enter password"
        text.backgroundColor = .white
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupDelegate()
        setConstraints()
    }
    
    //Вьюшки
    private func setupViews(){
        title = "Music Player"
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        //view scroll
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        //views
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
        view.addSubview(emailTextField)
        view.addSubview(passworTextField)
        //labels
        view.addSubview(musicPlayerLabel)
        view.addSubview(labelLogin)
    }
    private func setupDelegate(){
        emailTextField.delegate = self
        passworTextField.delegate = self
    }

    //selector для кнопки входа в приложение после ввода логина и пароля
    @objc private func signInButtonTapped(){
    let navVC = UINavigationController(rootViewController: AlbumViewController())
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true)
    }
    //selector для кнопки регистрации
    @objc private func signUpButtonTapped(){
        let registrationViewController = RegistrationViewController()
        navigationController?.pushViewController(registrationViewController, animated: true)
    }
}

extension AuthViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField:UITextField) -> Bool{
        emailTextField.resignFirstResponder()
        passworTextField.resignFirstResponder()
        return true
    }
}

extension AuthViewController {
    //MARK: - SetConstraints
    private func setConstraints(){
        //констрейнты для scrollView
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0)
        ])
        //констрейнты для backgroundView
        NSLayoutConstraint.activate([
            backgroundView.centerXAnchor.constraint(equalTo:backgroundView.centerXAnchor),
            backgroundView.centerYAnchor.constraint(equalTo:backgroundView.centerYAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
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
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        // textField(2)
        NSLayoutConstraint.activate([
            passworTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passworTextField.topAnchor.constraint(equalTo: view.bottomAnchor,constant: -420),
            passworTextField.heightAnchor.constraint(equalToConstant: 50),
            passworTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
}

