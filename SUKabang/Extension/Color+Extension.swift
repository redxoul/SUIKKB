//
//  Color+Extension.swift
//  SUKabang
//
//  Created by solgoon on 11/4/23.
//

import UIKit
import SwiftUI

extension Color {
    init(r: Int, g: Int, b: Int, a: Float = 1.0) {
        self.init(uiColor: .color(r: r, g: g, b: b, a: a))
    }
}

extension UIColor {
    static func color(r: Int, g: Int, b: Int, a: Float = 1.0) -> UIColor {
        return UIColor(red: CGFloat(r)/255.0,
                       green: CGFloat(g)/255.0,
                       blue: CGFloat(b)/255.0,
                       alpha: CGFloat(a))
    }
}
