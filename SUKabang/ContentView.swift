//
//  ContentView.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    
    let tabColor = Color.white
    
    var body: some View {
        TabView {
            Group {
                HomeRootView()
                    .tabItem {
                        TabButton(systemName: "person.fill")
                    }
                
                GoodsRootView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                    }
                
                NotificationRootView()
                    .tabItem {
                        Image(systemName: "bell.fill")
                    }
                
                AllMenuRootView()
                    .tabItem {
                        Image(systemName: "ellipsis")
                    }
            }
        }
        .tint(Color(r: 34, g: 34, b: 34))
    }
}

#Preview {
    ContentView()
}
