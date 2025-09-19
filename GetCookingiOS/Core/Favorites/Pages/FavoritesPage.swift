//
//  FavoritesPage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 收藏页面
struct FavoritesPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "heart")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                
                Text("收藏")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("这里将展示你收藏的菜谱和内容")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .navigationTitle("收藏")
        }
    }
}

#Preview {
    FavoritesPage()
}
