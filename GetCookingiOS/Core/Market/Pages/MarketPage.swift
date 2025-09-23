//
//  MarketPage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 市集页面
struct MarketPage: View {
    @StateObject var viewModel = MarketViewModel()
    var body: some View {
        ScrollView {
            //1. 顶部搜索栏
            HomeTopView(
                searchText: $viewModel.searchText,
                leftMenuIconName: "paperplane",
                rightDateIconName: "cart.fill"
            )
            //2. 市集菜单栏
            MarketMenuView()
        }
    }

}

#Preview {
    MarketPage()
}
