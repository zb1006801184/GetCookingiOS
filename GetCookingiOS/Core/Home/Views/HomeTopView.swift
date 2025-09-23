//
//  HomeTopView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/19.
//

import SwiftUI

struct HomeTopView: View {
    // 搜索输入绑定状态
    @Binding var searchText: String
    //左侧菜单图标名称
    var leftMenuIconName: String = "plus"
    //右侧日期图标名称
    var rightDateIconName: String = "briefcase"
    
    //左侧菜单点击回调
    var onMenuClick: (() -> Void)? = nil
    //右侧日期点击回调
    var onDateClick: (() -> Void)? = nil
    
    
    var body: some View {
        HStack {
            //1. 左侧添加按钮
            Button(action: {
            }) {
                Image(systemName: leftMenuIconName)
                    .foregroundColor(Color(hex: "#383838"))
                    .font(.system(size: 28, weight: .medium))
            }
            .frame(
                width: 56,
                height: 44,
                alignment: .center
            )
            //2. 中间输入框（含放大镜图标与内边距）
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(hex: "#9E9E9E"))
                TextField("输入内容", text: $searchText)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal, 12)
            .frame(height: 36)
            .background(Color(hex: "#f5f5f5"))
            .cornerRadius(8)
            
            
            //3. 右侧日期按钮
            Button(action: {
            }) {
                Image(systemName: rightDateIconName)
                    .foregroundColor(Color(hex: "#383838"))
                    .font(.system(size: 28, weight: .medium))
            }.frame(
                width: 56,
                height: 44,
                alignment: .center
            )

        }
        .frame(height: 44)

    }

}

#Preview {
    HomeTopView(searchText: .constant(""),
                leftMenuIconName: "plus",
                rightDateIconName: "briefcase"
    )
}
