//
//  TabbarView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 主标签栏视图
struct TabbarView: View {
    @State private var selectedTab: TabType = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // 下厨房（首页）
            HomePage()
                .tabItem {
                    TabItemView(
                        tabItem: TabType.home.tabItem,
                        isSelected: selectedTab == .home
                    )
                }
                .tag(TabType.home)
            
            // 市集
            MarketPage()
                .tabItem {
                    TabItemView(
                        tabItem: TabType.market.tabItem,
                        isSelected: selectedTab == .market
                    )
                }
                .tag(TabType.market)
            
            // 收藏
            FavoritesPage()
                .tabItem {
                    TabItemView(
                        tabItem: TabType.favorites.tabItem,
                        isSelected: selectedTab == .favorites
                    )
                }
                .tag(TabType.favorites)
            
            // 信箱
            InboxPage()
                .tabItem {
                    TabItemView(
                        tabItem: TabType.inbox.tabItem,
                        isSelected: selectedTab == .inbox
                    )
                }
                .tag(TabType.inbox)
            
            // 我
            ProfilePage()
                .tabItem {
                    TabItemView(
                        tabItem: TabType.profile.tabItem,
                        isSelected: selectedTab == .profile
                    )
                }
                .tag(TabType.profile)
        }
        .accentColor(.red) // 设置选中颜色为红色
    }
}

#Preview {
    TabbarView()
}
