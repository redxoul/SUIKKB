//
//  NavigationHomeTitleView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct NavigationHomeTitleView: View {
    let title: String
    let action: (() -> Void)?
    
    init(title: String, action: (() -> Void)? = nil) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        Button(title) {
            action?()
        }
        .font(.system(size: 24, weight: .bold))
    }
}
#Preview {
    NavigationHomeTitleView(title: "제목")
}
