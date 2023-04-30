//
//  CheckOutViewController.swift
//  SwiftBookCafe
//
//  Created by kramonex on 27.04.2023.
//

import UIKit

final class CheckOutViewController: UIViewController {

    
    @IBOutlet var grandTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        grandTotal.text = "0"

    }
    
    //нужна функция подсчета стоимости корзины
    
    

    @IBAction func orderTapped() {
    }
    
}
