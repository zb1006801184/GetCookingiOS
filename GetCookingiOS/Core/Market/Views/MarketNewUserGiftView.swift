//
//  MarketNewUserGiftView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/24.
//

import SwiftUI

/// 新人礼包卡片视图
struct MarketNewUserGiftView: View {
    var body: some View {
        // 卡片主体布局
        VStack(spacing: 12) {
            // 金额标题
            Text("¥ 300")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(Color(hex: "#FF4D4F"))

            // 礼包标签
            Text("新人礼包")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .padding(.horizontal, 36)
                .padding(.vertical, 8)
                .background(
                    Color(hex: "#FF4D4F")
                )

            // 引导领取提示
            Text("戳此领取 >")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color(hex: "#FF4D4F"))

            // 礼包内容说明
            VStack(spacing: 4) {
                Text("·沃隆坚果 ·小煎锅")
                    .font(.system(size: 13))
                    .foregroundColor(Color(hex: "#FF6B35"))

                Text("·新垣结衣同款烤箱")
                    .font(.system(size: 13))
                    .foregroundColor(Color(hex: "#FF6B35"))
            }
        }
        .padding(.vertical, 28)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 0)
                .fill(Color(hex: "#f8f8f8"))
        )
    }
}

#Preview {
    MarketNewUserGiftView()
        .padding()
        .background(Color.gray.opacity(0.2))
}

