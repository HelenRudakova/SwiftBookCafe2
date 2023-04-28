//
//  LoginScreenViewController.swift
//  SwiftBookCafe
//
//  Created by Danila Kornev on 26.04.2023.
//

import UIKit

final class LoginScreenViewController: UIViewController {
    
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
            //скрытие клавиатуры по тапу на экран
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? MainViewController else { return }
        mainVC.someLabelWithCustomerName.text = customerNameTextField.text
            //переход на главный экран.
            //1. вместо MainViewController назначить класс главного экрана;
            //2. вместо someLabelWithCustomerName ввести объявленный на главном экране аутлет.
            //3. На сториборде в storyboard reference заменить ID на ID главного экрана, сменить описание. Сейчас прописан InfoViewController для симуляции.
        guard let cartVC = segue.destination as? CartViewController else { return }
        someVC.someLabelWithCustomerTable.text = tableTextField.text
            //переход на экран корзины.
            //1. вместо CartViewController ввести класс экрана корзины;
            //2. вместо someLabelWithCustomerTable ввести вести объявленный на экране аутлет для лейбла обозначающего столик посетителя.
    }
    
    @IBAction func goButtonPressed() {
        
    }
}


