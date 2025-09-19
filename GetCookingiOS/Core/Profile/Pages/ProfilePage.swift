//
//  ProfilePage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 个人中心页面
struct ProfilePage: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                
                Text("我")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("这里将展示个人信息和设置")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .navigationTitle("我")
        }
    }
}

#Preview {
    ProfilePage()
}
