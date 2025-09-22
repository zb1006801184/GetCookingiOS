//
//  HomeCellHeaderView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/22.
//

import SwiftUI

struct HomeCellHeaderView: View {
    
    var title : String
    var buttonTitle : String
    
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color(hex: "#383838"))
            Button(action: {
                print("查看更多按钮点击")
            }) {
                Text(buttonTitle)
            }
            .font(.system(size: 15))
            .fontWeight(.medium)
            .foregroundColor(Color(hex: "#a6a6a6"))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.horizontal,18)
    }
}

#Preview {
    HomeCellHeaderView(
        title: "本周食材包", buttonTitle: "查看全部"
    )
}
