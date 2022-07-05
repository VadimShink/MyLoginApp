//
//  WelcomeViewController.swift
//  MyLoginApp
//
//  Created by Vadim Shinkarenko on 05.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var myWelcomeLabel: UILabel!
    
    //MARK: Public properties
    var user: User!
    
    //MARK: Private properties
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
}

// MARK: - Set background color
extension WelcomeViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        
    }
}
