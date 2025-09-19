//
//  InboxPage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 信箱页面
struct InboxPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "envelope")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                
                Text("信箱")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("这里将展示消息和通知")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .navigationTitle("信箱")
        }
    }
}

#Preview {
    InboxPage()
}
