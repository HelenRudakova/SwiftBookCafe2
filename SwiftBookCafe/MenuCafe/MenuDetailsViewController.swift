//
//  MenuDetailsViewController.swift
//  SwiftBookCafe
//
//  Created by Елена Рудакова on 30.04.2023.
//
import UIKit

class MenuDetailsViewController: UIViewController {
    
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var menuTitleLabel: UILabel!
    @IBOutlet var priceTitleLabel: UILabel! //
    
    @IBOutlet var moveButton: UIButton!
    
    
    var menu: Menu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dishImageView.image = UIImage(named: menu.title)
        menuTitleLabel.text = menu.dish
        priceTitleLabel.text = menu.price
    }
    
}
