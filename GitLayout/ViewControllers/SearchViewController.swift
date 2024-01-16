//
//  ViewController.swift
//  GitLayout
//
//  Created by DA MAC M1 157 on 2024/01/15.
//

import UIKit

class SearchViewController: UIViewController {
    
    let username = GithubTextFields(placeholer: "Enter firstname")
    let surname = GithubTextFields(placeholer: "Enter your last Name")
    let email = GithubTextFields(placeholer: "Enter your email address")
    let submitButton = GitButton(title: "Submit", backgroundColor: .systemGreen, titleColor: .white)
    
    var isUsernameEntered: Bool {
        return !username.text!.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureConstraints()
        createDismissKeyboardTapGesture()
    }
    
    private func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    func configureUI() {
        view.backgroundColor = UIColorFromRGB(rgbValue: 0xF2F1EB)
        view.addSubview(username)
        view.addSubview(surname)
        view.addSubview(email)
        view.addSubview(submitButton)
    }
    
    func configureConstraints() {
        
        let padding: CGFloat = 30
        let usernameConstraints = [
            username.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            username.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            username.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            username.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let surnameConstraints = [
        
            surname.topAnchor.constraint(equalTo: username.bottomAnchor, constant: padding),
            surname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            surname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            surname.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let emailConstraints = [
            email.topAnchor.constraint(equalTo: surname.bottomAnchor, constant: padding),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            email.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let submitButtonConstraints = [
            submitButton.topAnchor.constraint(equalTo: email.bottomAnchor, constant: padding),
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            submitButton.heightAnchor.constraint(equalToConstant: 55)
        ]
        
        NSLayoutConstraint.activate(usernameConstraints)
        NSLayoutConstraint.activate(surnameConstraints)
        NSLayoutConstraint.activate(emailConstraints)
        NSLayoutConstraint.activate(submitButtonConstraints)
    }


}

