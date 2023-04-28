//
//  Info.swift
//  SwiftBookCafe
//
//  Created by Danila Kornev on 27.04.2023.
//

import Foundation

struct Developer {
    let devName: String
    let devPhoto: String
    let devDescription: String
    
    static func getDeveloperList() -> [Developer] {
        [
            Developer(
                devName: "Елена Рудакова",
                devPhoto: "ЕленаРудакова",
                devDescription: "г.Москва. Teamlead команды. Разработка экрана меню, мержинг проекта."
            ),
            Developer(
                devName: "Данила Корнев",
                devPhoto: "ДанилаКорнев",
                devDescription: "г.Санкт-Петербург. Разработка экрана входа и экрана инфо о команде."
            ),
            Developer(
                devName: "Елисей Граделев",
                devPhoto: "ЕлисейГраделев",
                devDescription: "г.Москва. Разработка экрана приветствия."
            ),
            Developer(
                devName: "Марк Никифоров",
                devPhoto: "МаркНикифоров",
                devDescription: "г.Краснодар. Разработка экрана корзины заказа."
            )
        ]
    }
}

