//
//  AboutMeViewController.swift
//  MyLoginApp
//
//  Created by Vadim Shinkarenko on 05.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
}
