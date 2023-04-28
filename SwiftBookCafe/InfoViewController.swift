//
//  InfoViewController.swift
//  SwiftBookCafe
//
//  Created by Danila Kornev on 27.04.2023.
//

import UIKit

final class InfoViewController: UITableViewController {
    
    private let developerList = Developer.getDeveloperList()
        //получение данных из структуры модели.
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 150
         //установка высоты строки
    }
}
// MARK: - UITableViewDataSourse
extension InfoViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return developerList.count
        //установка строк по посчитанному в модели кол-ву разработчиков.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let developer = developerList[indexPath.row]
        content.text = developer.devName
        content.secondaryText = developer.devDescription
        content.image = UIImage(named: developer.devPhoto)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
        //конфигурация контента в строках табличного представления.
    }
}
