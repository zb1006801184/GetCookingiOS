//
//  TabItem.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

/// 标签页数据模型
struct TabItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let systemImage: String
    let selectedSystemImage: String?
    
    init(title: String, systemImage: String, selectedSystemImage: String? = nil) {
        self.title = title
        self.systemImage = systemImage
        self.selectedSystemImage = selectedSystemImage
    }
}

/// 标签页枚举
enum TabType: CaseIterable {
    case home
    case market
    case favorites
    case inbox
    case profile
    
    var tabItem: TabItem {
        switch self {
        case .home:
            return TabItem(
                title: "下厨房",
                systemImage: "house",
                selectedSystemImage: "house.fill"
            )
        case .market:
            return TabItem(
                title: "市集",
                systemImage: "storefront",
                selectedSystemImage: "storefront.fill"
            )
        case .favorites:
            return TabItem(
                title: "收藏",
                systemImage: "heart",
                selectedSystemImage: "heart.fill"
            )
        case .inbox:
            return TabItem(
                title: "信箱",
                systemImage: "envelope",
                selectedSystemImage: "envelope.fill"
            )
        case .profile:
            return TabItem(
                title: "我",
                systemImage: "person",
                selectedSystemImage: "person.fill"
            )
        }
    }
}
