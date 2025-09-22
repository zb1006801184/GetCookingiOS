//
//  HomeADView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import SwiftUI

struct HomeADView: View {
    var body: some View {
        VStack {
            Image("home_ad_1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 96)
                .padding(.horizontal, 18)
                .clipped()
            adTextView()
        }
    }

    //ad 文本

    private func adTextView() -> some View {
        HStack(spacing: 4) {
            Text("高阶吃货club，爱吃的你不可错过！")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color.gray)
                .frame(maxWidth: .infinity, alignment: .leading)

            // 按照用户图片样式的按钮
            Button(action: {
                print("广告按钮点击")
            }) {
                HStack(spacing: 6) {
                    Text("广告")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color.gray)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color.gray)
                }
                .frame( height: 24)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(.systemGray5))
                .cornerRadius(8)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 11)
        .padding(.horizontal, 18)
    }

}

#Preview {
    HomeADView()
}
