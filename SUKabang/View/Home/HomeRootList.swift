//
//  HomeRootList.swift
//  SUKabang
//
//  Created by solgoon on 11/5/23.
//

import SwiftUI

struct HomeRootList: View {
    let list: [HomeDepositCellModel]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(list, id: \.id) { model in
                HomeDepositCell(model: model)
            }
            Spacer(minLength: 30)
        }
    }
}

#Preview {
    HomeRootList(list: homeListModel)
}
