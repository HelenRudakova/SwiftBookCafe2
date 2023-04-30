//
//  MenuTableTableViewController.swift
//  SwiftBookCafe
//
//  Created by Елена Рудакова on 30.04.2023.
//

import UIKit

final class MenuTableViewController: UITableViewController {
    
    //перемещение пользователем
    private var menuList = Menu.getMenuList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200


    }


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let menu = menuList[indexPath.row]
        let detailVC = segue.destination as? MenuDetailsViewController
        detailVC?.menu = menu

    }
}

// MARK - UITable

extension MenuTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuList.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath)
         var content = cell.defaultContentConfiguration()
         let menu = menuList[indexPath.row]
         content.text = menu.dish
         content.secondaryText = menu.price
         content.image = UIImage(named: menu.title)
         content.imageProperties.cornerRadius = 10
         cell.contentConfiguration = content
     

     
         return cell
     }
}

// MARK: - UITableViewDelegate
extension MenuTableViewController {

}
