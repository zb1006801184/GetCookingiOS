//
//  MarketMenuView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 市集菜单栏视图
struct MarketMenuView: View {
    var body: some View {
        // 菜单网格布局
        LazyVGrid(
            columns: Array(
                repeating: GridItem(.flexible(), spacing: 12),
                count: 4
            ),
            spacing: 19
        ) {
            ForEach(0..<8) { index in
                menuItemView(
                    imageName: [
                        "mug.fill",  // 烘焙
                        "leaf",  // 果蔬生鲜
                        "wineglass.fill",  // 器具
                        "ticket",  // 领券
                        "fork.knife",  // 方便食品
                        "airplane",  // 进口食品
                        "location.circle",  // 时令鲜食
                        "square.grid.2x2",  // 全部分类
                    ][index],
                    title: [
                        "烘焙",  // 烘焙
                        "果蔬生鲜",  // 果蔬生鲜
                        "器具",  // 器具
                        "领券",  // 领券
                        "方便食品",  // 方便食品
                        "进口食品",  // 进口食品
                        "时令鲜食",  // 时令鲜食
                        "全部分类",  // 全部分类
                    ][index],
                    index: index
                )
            }
        }
        .padding(.vertical, 19)
        .padding(.horizontal, 17)
    }

    /// 菜单项视图
    private func menuItemView(
        imageName: String,
        title: String,
        index: Int = 0
    ) -> some View {
        VStack(spacing: 0) {
            // 图标容器
            Image(systemName: imageName)
                .font(.system(size: 32, weight: .medium))
                .foregroundColor(Color(hex: "#FF6B35"))
                .frame(maxHeight: .infinity, alignment: .center)

            // 标题
            Text(title)
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(Color(hex: "#333333"))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(height: 32, alignment: .center)
        }
        .frame(width: 64, height: 76)
        .onTapGesture {
            print("点击了菜单：\(title) - \(index)")
        }
    }
}

#Preview {
    MarketMenuView()
}
