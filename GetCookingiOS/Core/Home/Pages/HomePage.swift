//
//  HomePage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

struct HomePage: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            HomeTopView(searchText: $viewModel.searchText)
            Spacer().frame(height: 8)
            HomeTopMenuView(onMenuItemTap: viewModel.onMenuClick)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    HomePage()
}
