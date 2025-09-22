//
//  HomeWeekFoodModel.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import Foundation

class HomeWeekFoodModel: ObservableObject, Identifiable {
    //唯一标识
    let id: UUID = UUID()
    //图片名称
    @Published var imageName: String = ""
    //菜名
    @Published var foodName: String = ""
    //价格
    @Published var price: String = ""
    //描述
    @Published var desc: String = ""
    
    //from json
    init(from json: [String: Any]) {
        self.imageName = json["imageName"] as? String ?? ""
        self.foodName = json["foodName"] as? String ?? ""
        self.price = json["price"] as? String ?? ""
        self.desc = json["desc"] as? String ?? ""
    }
    
    //from  list json
  static func fromListJson(from listJson: [[String: Any]])-> [HomeWeekFoodModel] {
        
        var models: [HomeWeekFoodModel] = []
        for item in listJson {
            let model = HomeWeekFoodModel(from: item)
            models.append(model)
        }
        return models
    }
    
}
