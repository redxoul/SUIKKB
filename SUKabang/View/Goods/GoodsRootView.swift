//
//  GoodsRootView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct GoodsRootView: View {
    var body: some View {
        VStack {
            Text("상품/서비스 루트")
                .kabangNavigationBar(
                    firstView: {
                        NavigationHomeTitleView(title: "상품/서비스")
                            .foregroundColor(.black)
                })
        }
    }
}

#Preview {
    GoodsRootView()
}
