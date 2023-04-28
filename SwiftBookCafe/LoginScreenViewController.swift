//
//  LoginScreenViewController.swift
//  SwiftBookCafe
//
//  Created by Danila Kornev on 26.04.2023.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    @IBOutlet weak var customerNameTextField: UITextField!
    @IBOutlet weak var tableTextField: UITextField!
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.image = UIImage(named: "SBC_logo600x600")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func goButtonPressed() {
        
    }
}


