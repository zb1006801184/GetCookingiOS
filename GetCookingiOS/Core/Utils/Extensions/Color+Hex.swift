//
//  Color+Hex.swift
//  GetCookingiOS
//  Created by zhubiao07 on 2025/9/19.
//  十六进制颜色拓展，支持 UInt 与字符串形式
//

import SwiftUI

extension Color {
    /// 使用整数十六进制初始化颜色，例如 0xFFAA00
    /// - Parameters:
    ///   - hex: 0xRRGGBB 的整数值
    ///   - alpha: 不透明度，默认 1.0
    init(hex: UInt, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self = Color(red: red, green: green, blue: blue, opacity: alpha)
    }

    /// 使用字符串十六进制初始化颜色，例如 "#FFAA00"、"FFAA00"、"0xFFAA00"
    /// - Parameters:
    ///   - hex: 字符串形式的十六进制颜色值
    ///   - alpha: 不透明度，默认 1.0
    init(hex: String, alpha: Double = 1.0) {
        var cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if cleaned.hasPrefix("#") { cleaned.removeFirst() }
        if cleaned.lowercased().hasPrefix("0x") {
            cleaned = String(cleaned.dropFirst(2))
        }
        guard cleaned.count == 6,
              let value = UInt(cleaned, radix: 16) else {
            // 解析失败时使用黑色作为默认值
            self = .black
            return
        }
        self.init(hex: value, alpha: alpha)
    }
}


