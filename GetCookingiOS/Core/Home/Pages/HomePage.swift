//
//  HomePage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

struct HomePage: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        ScrollView {
            //1. 顶部搜索栏
            HomeTopView(
                searchText: $viewModel.searchText,
                leftMenuIconName: "plus",
                rightDateIconName: "briefcase"
            )
            Spacer().frame(height: 8)
            //2. 顶部菜单栏
            HomeTopMenuView(onMenuItemTap: viewModel.onMenuClick)

            //3. 顶部图片展示
            topImageView()
            Spacer().frame(height: 16)

            //4. 轮播图
            HomeBannerView()

            //5. 广告
            HomeADView()

            //6.周菜谱列表
            HomeWeekFoodView(dataList: HomeMockDataManager.weekFoodDataList())
            //7.周菜谱列表
            HomeWeekFoodView(dataList: HomeMockDataManager.weekFoodDataList())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    // 顶部展示图片
    private func topImageView() -> some View {
        HStack {
            Image("home_1")
                .resizable()
                .scaledToFill()
            Spacer().frame(width: 11)
            Image("home_2")
                .resizable()
                .scaledToFill()
        }
        .padding(.horizontal, 18)
    }

}

#Preview {
    HomePage()
}
