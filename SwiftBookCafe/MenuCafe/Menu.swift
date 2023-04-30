//
//  Menu.swift
//  SwiftBookCafe
//
//  Created by Елена Рудакова on 30.04.2023.
//

struct Menu {
    let dish: String
    let price: String

    var title: String {
        "\(dish) - \(price)"
    }
    
    static func getMenuList() -> [Menu] {
        [
            Menu(dish: "Печеные яблоки", price: "500р"),
            Menu(dish: "Розочки из яблок", price: "400р"),
            Menu(dish: "Яблочный сидр", price: "300р"),
            Menu(dish: "Утка фаршированная с яблоками", price: "1500р"),
            Menu(dish: "Яблоко в вишневой карамели", price: "300р"),
            Menu(dish: "Яблочные пончики в кляре", price: "550р"),
            Menu(dish: "Яблочный сок", price: "200р"),
            Menu(dish: "Яблочный штрудель с мороженым", price: "500р")
        ]
    }
    
}
