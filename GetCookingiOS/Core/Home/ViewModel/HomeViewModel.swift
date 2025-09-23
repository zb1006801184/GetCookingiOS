//
//  HomeViewModel.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/19.
//

import Foundation

class HomeViewModel: ObservableObject {

    //搜索框文字
    @Published var searchText: String = ""

    //菜单点击
    func onMenuClick(index: Int) {
        print("点击了菜单：\(index) ")
    }
}
