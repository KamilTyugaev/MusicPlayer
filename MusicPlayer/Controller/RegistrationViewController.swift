//
//  RegistrationViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 19.01.2022.

import UIKit

class RegistrationViewController: UIViewController {
    private let scrollView:UIScrollView = {
        let scrolView = UIScrollView()
        scrolView.translatesAutoresizingMaskIntoConstraints = false
        return scrolView
    }()
    private let backgroundView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //  1 лейбл
    private let labelRegistration:UILabel = {
        var label = UILabel()
        label.text = "Registration"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего имени
    private let firstNameTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter first name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для firstName
    private let firstNameValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего имени
    private let secondNameTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter second name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для second Name
    private let secondNameValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // label для вывода ошибки при валидации для datePicker
    private let dateValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего телефона
    private let phoneNumberTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter phone"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для phone
    private let phoneValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего логина
    private let emailTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter email"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для email
    private let emailValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего пароля
    private let passwordTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.isSecureTextEntry = true
        text.placeholder = " Enter password"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для password
    private let passwordValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // кнопка для сохранения данных нового пользователя
    //в базу данных(пока только не вып-ет само сохранение но это временно )
    private let signUpButton:UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.addTarget(self, action:#selector(signUpButtonTapped) , for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let datePicker = UIDatePicker()
    //Stack View для лейблов и текстфилдов
    private var elementsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        setupDelegate()
        setupDataPicker()
    }
    
    private func setupViews() {
        title = "SignUp"
        backgroundView.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        
        elementsStackView = UIStackView(arrangedSubViews: [firstNameTextField,
                                                             firstNameValidLabel,
                                                             secondNameTextField,
                                                             secondNameValidLabel,
                                                             datePicker,
                                                             dateValidLabel,
                                                             phoneNumberTextField,
                                                             phoneValidLabel,
                                                             emailTextField,
                                                             emailValidLabel,
                                                             passwordTextField,
                                                             passwordValidLabel,
                                                             ],
                                          axis: .vertical,
                                          spacing: 5,
                                          distribution: .fillProportionally)
        backgroundView.addSubview(elementsStackView)
        backgroundView.addSubview(labelRegistration)
        backgroundView.addSubview(signUpButton)
    }
    
    private func setupDelegate() {
        firstNameTextField.delegate = self
        secondNameTextField.delegate = self
        phoneNumberTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func setupDataPicker() {
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = .white
        datePicker.layer.borderColor = #colorLiteral(red: 0.8810099265, green: 0.8810099265, blue: 0.8810099265, alpha: 1)
        datePicker.layer.borderWidth = 1
        datePicker.clipsToBounds = true
        datePicker.layer.cornerRadius = 6
        datePicker.tintColor = .black
    }
    
    @objc private func signUpButtonTapped() {
        print("SignUpTap")
    }
}


//MARK: - UITextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameTextField.resignFirstResponder()
        secondNameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}

//MARK: - SetConstraints
extension RegistrationViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            elementsStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            elementsStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            elementsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            elementsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20)
        ])
//        NSLayoutConstraint.activate([
//            passwordValidLabel.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -10),
//            passwordValidLabel.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor,constant: 20),
//
//        ])
        NSLayoutConstraint.activate([
            firstNameTextField.heightAnchor.constraint(equalToConstant: 30),
            secondNameTextField.heightAnchor.constraint(equalToConstant: 30),
            datePicker.heightAnchor.constraint(equalToConstant: 30),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
    
        NSLayoutConstraint.activate([
            labelRegistration.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            labelRegistration.bottomAnchor.constraint(equalTo: elementsStackView.topAnchor, constant: -30),
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: elementsStackView.bottomAnchor, constant: 30),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.widthAnchor.constraint(equalToConstant: 300)
        ])
        
    }
}

