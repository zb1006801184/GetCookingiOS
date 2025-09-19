//
//  HomeTopMenuView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/19.
//

import SwiftUI

struct HomeTopMenuView: View {
    //点击回调
    var onMenuItemTap: ((Int) -> Void)? = nil
    
    var body: some View {
        HStack (spacing: 0) {
            ForEach(0..<4) { index in
                Spacer()
                menuItemView(
                    imageName: ["fork.knife", "questionmark.bubble", "chart.bar", "book.closed"][index],
                    title: ["厨房好物", "厨房问答", "排行榜", "菜谱分类"][index],
                    index: index
                )
                Spacer()
            }
        }
        .frame(height: 80)
        .frame(maxWidth: .infinity, alignment: .center)

    }

    //菜单 item view

    private func menuItemView(
        imageName: String,
        title: String,
        index: Int = 0
    ) -> some View {
        VStack(spacing: 0) {
            Image(systemName: imageName)
                .font(.system(size: 32))
                .foregroundColor(iconColor(for: imageName))
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "#505050"))
                .frame(height: 32,alignment: .center)
        }
        .onTapGesture {
            onMenuItemTap?(index)
        }
    }
    
    // 根据图标名称返回对应颜色
    private func iconColor(for imageName: String) -> Color {
        switch imageName {
        case "fork.knife":
            return Color(hex: "#FF6B6B") // 浅粉色
        case "questionmark.bubble":
            return Color(hex: "#FF8C42") // 橙色
        case "chart.bar":
            return Color(hex: "#4ECDC4") // 浅蓝色
        case "book.closed":
            return Color(hex: "#45B7D1") // 青蓝色
        default:
            return Color(hex: "#383838")
        }
    }

}

#Preview {
    HomeTopMenuView()
}
