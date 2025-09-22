//
//  HomeWeekFoodView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import SwiftUI

struct HomeWeekFoodView: View {
    
    var dataList: [HomeWeekFoodModel]
    
    var body: some View {
        VStack {
            HomeCellHeaderView(title: "本周食材包", buttonTitle: "查看全部")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(dataList) { item in
                        cellItemView(
                            model: item
                        )
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    
    
    
    //cell Item View
    private func cellItemView(model:HomeWeekFoodModel) -> some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipped()
                .cornerRadius(10)
        }
    }
    
    
}

#Preview {
    HomeWeekFoodView(
        dataList: HomeMockDataManager.weekFoodDataList()
    )
}
