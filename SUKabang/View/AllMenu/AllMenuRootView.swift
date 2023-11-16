//
//  AllMenuRootView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct AllMenuRootView: View {
    var body: some View {
        Text("전체메뉴 루트")
            .kabangNavigationBar(
                firstView: {
                    NavigationHomeTitleView(title: "타이틀")
                        .foregroundColor(.black)
                }, lastView: {
                    RoundedButton(title: "앱설정")
                })
    }
}

#Preview {
    AllMenuRootView()
}

