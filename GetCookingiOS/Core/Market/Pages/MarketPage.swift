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
            HomeTopView(
                searchText: $viewModel.searchText,
                leftMenuIconName: "bag.badge.plus",
                rightDateIconName: "slider.horizontal.3"
            )
        }
    }
}

#Preview {
    MarketPage()
}
