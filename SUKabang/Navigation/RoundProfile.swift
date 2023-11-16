//
//  NavigationRoundProfile.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct RoundProfile: View {
    let image: ImageResource
    let size: CGFloat
    let action: (() -> Void)?
    
    init(image: ImageResource, size: CGFloat, action: (() -> Void)? = nil) {
        self.image = image
        self.size = size
        self.action = action
    }
    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            Image(image)
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
        })
        .frame(width: size, height: size)
    }
}

#Preview {
    RoundProfile(image: .profile, size: 44)
}
