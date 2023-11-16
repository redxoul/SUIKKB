//
//  NavigationRoundButton.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

enum NavigationRoundButtonTheme {
    case light
    case dark
    
    var foreground: Color {
        switch self {
        case .light: return Color(r: 0, g: 0, b: 0)
        case .dark: return Color(r: 173, g: 173, b: 178)
        }
    }
    
    var background: Color {
        switch self {
        case .light: return Color(r: 200, g: 200, b: 200, a: 0.3)
        case .dark: return Color(r: 60, g: 63, b: 72, a: 0.6)
        }
    }
}

struct RoundedButton: View {
    let title: String
    let theme: NavigationRoundButtonTheme
    let action: (() -> Void)?
    
    init(title: String, theme: NavigationRoundButtonTheme = .light, action: (() -> Void)? = nil) {
        self.title = title
        self.theme = theme
        self.action = action
    }
    
    var body: some View {
        Button(title) {
            action?()
        }
        .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
        .font(.system(size: 12))
        .background(theme.background)
        .foregroundColor(theme.foreground)
        .cornerRadius(16)
    }
}
#Preview {
    ZStack {
//        Color(r: 40, g: 42, b: 49)
        RoundedButton(title: "내 계좌", theme: .light)
    }
}
