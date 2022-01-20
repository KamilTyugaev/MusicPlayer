//
//  RegistrationViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 19.01.2022.
//

import UIKit

class RegistrationViewController: UIViewController {
    //  1 лейбл
    let labelRegistration:UILabel = {
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        label.text = "Registration"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // кнопка для сохранения данных нового пользователя
    //в базу данных(пока только не вып-ет само сохранение но это временно )
    let saveDataNewUserButton:UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // textField для нашего имени
    let firstNameField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter first name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // textField для нашего имени
    let secondNameField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter second name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // textField для нашей ДАТЫ
    let dateTextField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter date" // тут нужно сделать выборку ДАТЫ
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // textField для нашего телефона
    let phoneTextField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter phone"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // textField для нашего логина
    let emailTextField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter email"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // textField для нашего пароля
    let passwordTextField:UITextField = {
        var text = UITextField(frame: CGRect(x:0, y: 0, width: 200, height: 50))
        text.font = UIFont.italicSystemFont(ofSize: 17)
        text.backgroundColor = .white
        text.placeholder = " Enter password"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Registration"
        setupViews()
        setupConstrains()
    }
    private func setupViews(){
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
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
    }
    private func setupConstrains(){
        //констрейнты для лайбл
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

        //констрейнты для firstNameTextField(1)
        NSLayoutConstraint.activate([
            firstNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstNameField.topAnchor.constraint(equalTo: labelRegistration.topAnchor, constant: 70),
            firstNameField.heightAnchor.constraint(equalToConstant: 50),
            firstNameField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для secondNameTextField(2)
        NSLayoutConstraint.activate([
            secondNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondNameField.topAnchor.constraint(equalTo: firstNameField.topAnchor, constant: 70),
            secondNameField.heightAnchor.constraint(equalToConstant: 50),
            secondNameField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для DateTextField(3)
        NSLayoutConstraint.activate([
            dateTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dateTextField.topAnchor.constraint(equalTo: secondNameField.topAnchor, constant: 70),
            dateTextField.heightAnchor.constraint(equalToConstant: 50),
            dateTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для phoneTextField(4)
        NSLayoutConstraint.activate([
            phoneTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneTextField.topAnchor.constraint(equalTo: dateTextField.topAnchor, constant: 70),
            phoneTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для EmailTextField(5)
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: phoneTextField.topAnchor, constant: 70),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        //констрейнты для PasswordTextField(6)
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 70),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.widthAnchor.constraint(equalToConstant: 350)
        ])
        
    }
    
}
