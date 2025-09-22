//
//  HomeWeekFoodModel.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import Foundation

/*
 
 
 let array: [[String: String]] = [
  [
      "imageName": "home_week_food_4",
      "foodName": "泰式绿咖喱",
      "price": "¥48",
      "desc": "浓郁绿咖喱配椰奶和香料"
  ]
]
 
 guard let data = try? JSONSerialization.data(withJSONObject: array) else { return [] }
 
 
 // 解析单个对象
 let model = try JSONDecoder().decode(HomeWeekFoodModel.self, from: data)

 // 解析数组
 let models = try JSONDecoder().decode([HomeWeekFoodModel].self, from: data)
 */

class HomeWeekFoodModel: Codable, Identifiable {
    //唯一标识
    let id: UUID = UUID()
    let imageName: String
    let foodName: String
    let price: String
    let desc: String

    enum CodingKeys: String, CodingKey {
        case id, imageName, foodName, price
        case desc = "desc"
    }
    
   
    //from json
    init(from json: [String: Any]) {
        self.imageName = json["imageName"] as? String ?? ""
        self.foodName = json["foodName"] as? String ?? ""
        self.price = json["price"] as? String ?? ""
        self.desc = json["desc"] as? String ?? ""
    }

    //from  list json
    static func fromListJson(from listJson: [[String: Any]])
        -> [HomeWeekFoodModel]
    {

        var models: [HomeWeekFoodModel] = []
        for item in listJson {
            let model = HomeWeekFoodModel(from: item)
            models.append(model)
        }
        return models
    }

}
