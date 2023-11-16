//
//  TabButton.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct TabButton: View {
    let systemName : String
    
    var body: some View {
        VStack {
            Image(systemName: systemName)
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    TabButton(systemName: "person.fill")
}
