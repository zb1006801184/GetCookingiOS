//
//  HomeBannerView.swift
//  GetCookingiOS
//
//  Created by zhubiao07 on 2025/9/19.
//

import SwiftUI

struct HomeBannerView: View {
    // 轮播图数据
    private let bannerImages = ["home_banner_1", "home_banner_2", "home_banner_3"]
    
    // 轮播图标题数据
    private let bannerTitles = ["午餐", "晚餐", "早餐"]
    
    // 当前显示的页面索引
    @State private var currentIndex = 0
    
    // 自动滚动定时器
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            // 轮播图主体 - 整个页面可以滑动
            TabView(selection: $currentIndex) {
                ForEach(0..<bannerImages.count, id: \.self) { index in
                    // 单页内容：左侧文字 + 右侧图片
                    HStack(spacing: 0) {
                        // 左侧文字区域
                        VStack(alignment: .leading, spacing: 8) {
                            // 标题文字
                            Text("– \(bannerTitles[index]) –")
                                .font(.system(size: 18, weight: .light))
                                .foregroundColor(Color.black)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        // 右侧图片区域
                        Image(bannerImages[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 76, height: 76)
                            .clipped()
                    }
                    .background(Color.white)
                    .padding(.horizontal, 16)
                    .tag(index)
                }
            }
            .frame(height: 100)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onAppear {
                startAutoScroll()
            }
            .onDisappear {
                stopAutoScroll()
            }
            .onTapGesture {
                // 点击时暂停自动滚动
                pauseAutoScroll()
            }
            
            // 页面指示器 - 覆盖在轮播图上
            VStack {
                Spacer()
                HStack(spacing: 8) {
                    ForEach(0..<bannerImages.count, id: \.self) { index in
                        Circle()
                            .fill(index == currentIndex ? Color.black : Color.gray.opacity(0.3))
                            .frame(width: 10, height: 10)
                            .scaleEffect(index == currentIndex ? 1.0 : 0.9)
                            .animation(.easeInOut(duration: 0.3), value: currentIndex)
                    }
                }
                .padding(.bottom, 8)
            }
        }
    }
    
    // 开始自动滚动
    private func startAutoScroll() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.5)) {
                currentIndex = (currentIndex + 1) % bannerImages.count
            }
        }
    }
    
    // 停止自动滚动
    private func stopAutoScroll() {
        timer?.invalidate()
        timer = nil
    }
    
    // 暂停自动滚动（点击后3秒重新开始）
    private func pauseAutoScroll() {
        stopAutoScroll()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            startAutoScroll()
        }
    }
}

#Preview {
    HomeBannerView()
}
