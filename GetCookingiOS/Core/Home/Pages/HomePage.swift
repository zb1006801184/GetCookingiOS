//
//  HomePage.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/18.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            HomeTopView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    HomePage()
}
