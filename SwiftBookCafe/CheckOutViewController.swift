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
    
    //функция для приема данных из меню
    
    
    //нужна функция подсчета стоимости корзины
    
    
    
    
    //функция показывает поп-ап при заказе и очищает корзину
    @IBAction func orderTapped() {
        showAlert(title: "Заказ принят", message: "Спасибо что выбрали нас!")
        grandTotal.text = "0"
        //cell = EmptyCollection
    }
    
    
    //функция показа алерта
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
