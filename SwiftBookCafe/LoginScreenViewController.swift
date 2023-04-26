//
//  LoginScreenViewController.swift
//  SwiftBookCafe
//
//  Created by Danila Kornev on 26.04.2023.
//

import UIKit

class LoginScreenViewController: UIViewController {

    
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logo.image = UIImage(named: "SBC_logo600x600")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
