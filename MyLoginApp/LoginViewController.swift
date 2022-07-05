//
//  ViewController.swift
//  MyLoginApp
//
//  Created by Vadim Shinkarenko on 05.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var myUserNameTextField: UITextField!
    @IBOutlet var myPasswordTextField: UITextField!
    
    //MARK: - Private Properties
    private let user = User.getUserData()
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
        welcomeVC.user = user
        aboutUserVC.user = user
    }
    
    //MARK: - IBActions
    @IBAction func myLogInPressed() {
        guard
            myUserNameTextField.text == user.login,
            myPasswordTextField.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: myPasswordTextField)
            return
        }
        
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    @IBAction func myForgotUserNamePressed() {
        showAlert(title: "Oops!",
                  message: "Your name is \(user.login) 😉")
    }
    @IBAction func myForgotPasswordPressed() {
        showAlert(title: "Oops!",
                  message: "Your password is \(user.password) 😉")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

//MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Text Field Delegate
extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == myUserNameTextField {
            myPasswordTextField.becomeFirstResponder()
        } else {
            myLogInPressed()
        }
        return true
    }
}
