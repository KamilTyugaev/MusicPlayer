
//  ViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 18.01.2022.
//

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

   //  Title label
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
//        label.textAlignment = .center
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
    private let passwordTextField:UITextField = {
        var text = UITextField()
        text.placeholder = " Enter password"
        text.backgroundColor = .white
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private var textFieldStackView = UIStackView()
    private var buttonsStackView = UIStackView()

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
        textFieldStackView = UIStackView(arrangedSubViews: [emailTextField,passwordTextField],
                                                            axis: .vertical,
                                                            spacing: 20,
                                                            distribution: .fillProportionally)

        buttonsStackView = UIStackView(arrangedSubViews: [signUpButton,signInButton], axis: .horizontal, spacing: 10, distribution: .fillEqually)
 
        //view scroll
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        backgroundView.addSubview(textFieldStackView)
        //labels
        backgroundView.addSubview(musicPlayerLabel)
        backgroundView.addSubview(labelLogin)
        //Stackviews
        backgroundView.addSubview(buttonsStackView)
    }
    private func setupDelegate(){
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    //selector для кнопки входа в приложение после ввода логина и пароля
    @objc private func signInButtonTapped(){
    let navVC = UINavigationController(rootViewController: AlbumsViewController())
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true)
    }
    //selector для кнопки регистрации
    @objc private func signUpButtonTapped(){
        let registrationViewController = RegistrationViewController()
        self.present(registrationViewController, animated: true)
    }
}

extension AuthViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField:UITextField) -> Bool{
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}

extension AuthViewController {
    //MARK: - SetConstraints
    private func setConstraints(){
        //констрейнты для scrollView
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0)
        ])
        //констрейнты для backgroundView
        NSLayoutConstraint.activate([
            backgroundView.centerXAnchor.constraint(equalTo:scrollView.centerXAnchor),
            backgroundView.centerYAnchor.constraint(equalTo:scrollView.centerYAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        // StackTextField[email,password]
        NSLayoutConstraint.activate([
            textFieldStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            textFieldStackView.topAnchor.constraint(equalTo: labelLogin.topAnchor,constant: 100),
            textFieldStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor,constant: 40),
            textFieldStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor,constant: -40),
        ])

//        //label Music Player(1)
        NSLayoutConstraint.activate([
            musicPlayerLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            musicPlayerLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 50),
        ])
        //label Login(2)
        NSLayoutConstraint.activate([
            labelLogin.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            labelLogin.bottomAnchor.constraint(equalTo: musicPlayerLabel.topAnchor, constant: 150),
        ])
        NSLayoutConstraint.activate([
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)

        ])
        NSLayoutConstraint.activate([
        signInButton.heightAnchor.constraint(equalToConstant: 50),
        signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        //StackButton [signInButton,signUpButton]
        NSLayoutConstraint.activate([
            buttonsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            buttonsStackView.bottomAnchor.constraint(equalTo: textFieldStackView.bottomAnchor,constant: 150),
            buttonsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20)
        ])
    }
}
