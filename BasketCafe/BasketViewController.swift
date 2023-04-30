//
//  BasketViewController.swift
//  SwiftBookCafe
//
//  Created by Елена Рудакова on 30.04.2023.
//

import UIKit

class BasketViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var textOfLabel: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        label.text = textOfLabel

    }
    


}
