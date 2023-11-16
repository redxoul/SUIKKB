//
//  KabangNavigationBarModifier.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

// Custom NavigationBar를 위한 ViewModifier
struct KabangNavigationBarModifier<First, Second, Last>: ViewModifier where First: View, Second: View, Last: View {
    let firstView: (() -> First)?
    let secondView: (() -> Second)?
    let lastView: (() -> Last)?
    
    init(firstView: (() -> First)? = nil, secondView: (() -> Second)? = nil, lastView: (() -> Last)? = nil) {
        self.firstView = firstView
        self.secondView = secondView
        self.lastView = lastView
    }
    
    func body(content: Content) -> some View {
        VStack {
            ZStack {
                HStack {
                    self.firstView?()
                    self.secondView?()
                    Spacer()
                    self.lastView?()
                }
                .frame(height: 44)
                .padding(.horizontal, 16)
            }
            
            Spacer()
            
            content
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

