//
//  RegistrationViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 19.01.2022.
//

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
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // кнопка для сохранения данных нового пользователя
    //в базу данных(пока только не вып-ет само сохранение но это временно )
    private let saveDataNewUserButton:UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // textField для нашего имени
    private let firstNameField:UITextField = {
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
        label.textAlignment = .left
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего имени
    private let secondNameField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter second name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для firstName
    private let secondNameValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textAlignment = .left
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашей ДАТЫ
    private let dateTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter date" // тут нужно сделать выборку ДАТЫ
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для firstName
    private let dateValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textAlignment = .left
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего телефона
    private let phoneTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter phone"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для firstName
    private let phoneValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textAlignment = .left
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
    // label для вывода ошибки при валидации для firstName
    private let emailValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textAlignment = .left
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // textField для нашего пароля
    private let passwordTextField:UITextField = {
        var text = UITextField()
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter password"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // label для вывода ошибки при валидации для firstName
    private let passwordValidLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textAlignment = .left
        label.text = "Required field"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Registration"
        setupViews()
        setupDelegate()
        setupConstrains()
    }
    private func setupViews(){
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        //scrol view
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        //label
        view.addSubview(labelRegistration)
        //button
        view.addSubview(saveDataNewUserButton)
        //textFields
        view.addSubview(firstNameField)
        view.addSubview(secondNameField)
        view.addSubview(dateTextField)
        view.addSubview(phoneTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        //labels for valid
        view.addSubview(firstNameValidLabel)
        view.addSubview(secondNameValidLabel)
        view.addSubview(dateValidLabel)
        view.addSubview(phoneValidLabel)
        view.addSubview(emailValidLabel)
        view.addSubview(passwordValidLabel)
    }
    private func setupDelegate(){
        firstNameField.delegate = self
        secondNameField.delegate = self
        dateTextField.delegate = self
        phoneTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self

    }
}

extension RegistrationViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameField.resignFirstResponder()
        secondNameField.resignFirstResponder()
        dateTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}
    //констрейнты
extension RegistrationViewController{
    private func setupConstrains(){
        //констрейнты для scrollView
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: 0),
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

        //констрейнты для лайбл title registration
        NSLayoutConstraint.activate([
            labelRegistration.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelRegistration.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            labelRegistration.heightAnchor.constraint(equalToConstant: 70),
            labelRegistration.widthAnchor.constraint(equalToConstant: 170)
        ])
        //констрейнты для кнопки сохранения данных послу регистрации
        NSLayoutConstraint.activate([
            saveDataNewUserButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveDataNewUserButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            saveDataNewUserButton.heightAnchor.constraint(equalToConstant: 55),
            saveDataNewUserButton.widthAnchor.constraint(equalToConstant: 170)
        ])
                    // констрейнты для текстфилд и лейблов
        
        //констрейнты для firstNameTextField(1)
        NSLayoutConstraint.activate([
            firstNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstNameField.topAnchor.constraint(equalTo: labelRegistration.topAnchor, constant: 70),
            firstNameField.heightAnchor.constraint(equalToConstant: 50),
            firstNameField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для firstNameLabel(1)
        NSLayoutConstraint.activate([
            firstNameValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            firstNameValidLabel.topAnchor.constraint(equalTo: firstNameField.topAnchor, constant: 50),
            firstNameValidLabel.heightAnchor.constraint(equalToConstant: 10),
            firstNameValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        //констрейнты для secondNameTextField(2)
        NSLayoutConstraint.activate([
            secondNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondNameField.topAnchor.constraint(equalTo: firstNameValidLabel.topAnchor, constant: 20),
            secondNameField.heightAnchor.constraint(equalToConstant: 50),
            secondNameField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для secondNameLabel(2)
        NSLayoutConstraint.activate([
            secondNameValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            secondNameValidLabel.topAnchor.constraint(equalTo: secondNameField.topAnchor, constant: 50),
            secondNameValidLabel.heightAnchor.constraint(equalToConstant: 10),
            secondNameValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        //констрейнты для DateTextField(3)
        NSLayoutConstraint.activate([
            dateTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dateTextField.topAnchor.constraint(equalTo: secondNameValidLabel.topAnchor, constant: 20),
            dateTextField.heightAnchor.constraint(equalToConstant: 50),
            dateTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для labelFirstName(1)
        NSLayoutConstraint.activate([
            dateValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            dateValidLabel.topAnchor.constraint(equalTo: dateTextField.topAnchor, constant: 50),
            dateValidLabel.heightAnchor.constraint(equalToConstant: 10),
            dateValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        //констрейнты для phoneTextField(4)
        NSLayoutConstraint.activate([
            phoneTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneTextField.topAnchor.constraint(equalTo: dateValidLabel.topAnchor, constant: 20),
            phoneTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для labelFirstName(1)
        NSLayoutConstraint.activate([
            phoneValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            phoneValidLabel.topAnchor.constraint(equalTo: phoneTextField.topAnchor, constant: 50),
            phoneValidLabel.heightAnchor.constraint(equalToConstant: 10),
            phoneValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        //констрейнты для EmailTextField(5)
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: phoneValidLabel.topAnchor, constant: 20),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для labelFirstName(1)
        NSLayoutConstraint.activate([
            emailValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            emailValidLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 50),
            emailValidLabel.heightAnchor.constraint(equalToConstant: 10),
            emailValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        //констрейнты для PasswordTextField(6)
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailValidLabel.topAnchor, constant: 20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для labelFirstName(1)
        NSLayoutConstraint.activate([
            passwordValidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            passwordValidLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 50),
            passwordValidLabel.heightAnchor.constraint(equalToConstant: 10),
            passwordValidLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}
