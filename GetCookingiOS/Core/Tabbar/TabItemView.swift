//
//  TabItemView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 单个标签项视图组件
struct TabItemView: View {
    let tabItem: TabItem
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            // 图标
            Image(systemName: isSelected ? 
                  (tabItem.selectedSystemImage ?? tabItem.systemImage) : 
                  tabItem.systemImage)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(isSelected ? .red : .gray)
            
            // 文字
            Text(tabItem.title)
                .font(.system(size: 10, weight: .medium))
                .foregroundColor(isSelected ? .red : .gray)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
    }
}

#Preview {
    HStack {
        TabItemView(
            tabItem: TabType.home.tabItem,
            isSelected: true
        )
        TabItemView(
            tabItem: TabType.market.tabItem,
            isSelected: false
        )
    }
    .padding()
}
