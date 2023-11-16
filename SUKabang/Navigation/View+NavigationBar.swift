//
//  View+NavigationBar.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

extension View {
    func kabangNavigationBar<First, Second, Last> (
        firstView: @escaping (() -> First),
        secondView: @escaping (() -> Second),
        lastView: @escaping (() -> Last)
    ) -> some View where First: View, Second: View, Last: View {
        modifier(
            KabangNavigationBarModifier(
                firstView: firstView,
                secondView: secondView,
                lastView: lastView)
        )
    }
    
    func kabangNavigationBar<First, Last> (
        firstView: @escaping (() -> First),
        lastView: @escaping (() -> Last)
    ) -> some View where First: View, Last: View {
        modifier(
            KabangNavigationBarModifier(
                firstView: firstView,
                secondView: {
                    EmptyView()
                },
                lastView: lastView)
        )
    }
    
    func kabangNavigationBar<First> (
        firstView: @escaping (() -> First)
    ) -> some View where First: View {
        modifier(
            KabangNavigationBarModifier(
                firstView: firstView,
                secondView: {
                    EmptyView()
                },
                lastView: {
                    EmptyView()
                })
        )
    }
    
    
}
