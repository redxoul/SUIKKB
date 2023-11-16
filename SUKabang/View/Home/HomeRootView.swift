//
//  HomeRootView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct HomeRootView: View {
    let list: [HomeDepositCellModel] = homeListModel
    
    var body: some View {
        ZStack {
            Color(r: 40, g: 42, b: 49)
                .ignoresSafeArea(edges: .top)
            
            HomeRootList(list: homeListModel)
                .padding(.horizontal, 16)
                .padding(.top, 8)
                .padding(.bottom, -16)
                .kabangNavigationBar(
                    firstView: {
                        NavigationHomeTitleView(title: "타이틀")
                            .foregroundColor(.white)
                    }, secondView: {
                        RoundedButton(title: "내 계좌", theme: .dark)
                        
                    }, lastView: {
                        RoundProfile(image: .profile, size: 40)
                    })
        }
        
    }
}

#Preview {
    HomeRootView()
}
