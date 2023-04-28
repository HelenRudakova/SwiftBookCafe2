//
//  MainViewController.swift
//  SwiftBookCafe
//
//  Created by Gradelev Elisey on 28.04.2023.
//

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 1 //ссылка на массив наших блюд необходима массив.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PromotionCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        //content.image = UIImage(named: массив.название) тут необходимо сослаться на названия наших блюд
        
        return cell
    }
    
    
}
