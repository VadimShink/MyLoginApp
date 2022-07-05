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
    let user = User.getUserData()
    
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
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

