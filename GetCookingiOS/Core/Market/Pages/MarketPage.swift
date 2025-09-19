//
//  MarketPage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 市集页面
struct MarketPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "storefront")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                
                Text("市集")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("这里将展示各种食材和厨具")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .navigationTitle("市集")
        }
    }
}

#Preview {
    MarketPage()
}
