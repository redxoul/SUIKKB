//
//  NotificationRootView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct NotificationRootView: View {
    var body: some View {
        Text("알림 루트")
            .kabangNavigationBar(
                firstView: {
                    NavigationHomeTitleView(title: "알림")
                        .foregroundColor(.black)
                })
    }
}

#Preview {
    NotificationRootView()
}
