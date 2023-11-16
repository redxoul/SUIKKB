//
//  HomeDepositCellModel.swift
//  SUKabang
//
//  Created by solgoon on 11/9/23.
//

import Foundation
import SwiftUI

struct HomeDepositCellModel: Identifiable {
    var id: String {
        UUID().uuidString
    }
    var name: String
    var balance: String
    var image: ImageResource
    var theme: DepositTheme
    var cardInfo: CardInfo?
    var safeBoxInfo: SafeBoxInfo?
    
    var height: CGFloat {
        if safeBoxInfo == nil {
            return 140
        }
        else {
            return 200
        }
    }
    
    var cardExist: Bool {
        return cardInfo != nil
    }
    
    var safeboxExist: Bool {
        return safeBoxInfo != nil
    }
}

struct CardInfo {
    var name: String
    var cardNumber: String
}

struct SafeBoxInfo {
    var accountNumber: String
    var balance: String
}

enum DepositTheme: CaseIterable {
    case yellow
    case red
    case pink
    case green
    case blue
    
    var backgroundColor: Color {
        switch self {
        case .yellow:
            return Color(r: 255, g: 227, b: 0)
        case .red:
            return Color(r: 222, g: 90, b: 123)
        case .pink:
            return Color(r: 255, g: 164, b: 174)
        case .green:
            return Color(r: 54, g: 145, b: 118)
        case .blue:
            return Color(r: 51, g: 126, b: 251)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .yellow:
            return Color(r: 34, g: 34, b: 34)
        case .red:
            return Color(r: 255, g: 255, b: 255)
        case .pink:
            return Color(r: 34, g: 34, b: 34)
        case .green:
            return Color(r: 255, g: 255, b: 255)
        case .blue:
            return Color(r: 255, g: 255, b: 255)
        }
    }
}
