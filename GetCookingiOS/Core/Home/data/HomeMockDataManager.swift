//
//  HomeMockDataManager.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import Foundation

class HomeMockDataManager {
        
   static func weekFoodDataList() -> [HomeWeekFoodModel] {
       
       HomeWeekFoodModel.fromListJson(from: [
            [
                "imageName": "home_week_food_1",
                "foodName": "香煎三文鱼",
                "price": "¥58",
                "desc": "新鲜三文鱼搭配柠檬黄油"
            ],
            [
                "imageName": "home_week_food_2",
                "foodName": "意大利肉酱面",
                "price": "¥45",
                "desc": "经典意大利面配自制肉酱"
            ],
            [
                "imageName": "home_week_food_3",
                "foodName": "日式照烧鸡腿",
                "price": "¥50",
                "desc": "嫩滑鸡腿肉搭配特制照烧酱"
            ],
            [
                "imageName": "home_week_food_4",
                "foodName": "泰式绿咖喱",
                "price": "¥48",
                "desc": "浓郁绿咖喱配椰奶和香料"
            ]
       ])
    }
    
    
}
