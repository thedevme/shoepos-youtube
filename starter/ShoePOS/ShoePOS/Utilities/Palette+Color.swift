import SwiftUI
import Foundation

extension Color {
    static let baseWhite = Color("smoke")
    static let baseLightGrey = Color("light_grey")
    static let baseMediumGrey = Color("medium_grey")
    static let baseDarkGrey = Color("paynes_grey")
    static let baseLightBlue = Color("light_blue")
}

extension UIColor {
    static let baseWhite = Color("smoke")
    static let baseLightGrey = Color("light_grey")
    static let baseMediumGrey = Color("medium_grey")
    static let baseDarkGrey = Color("paynes_grey")
    static let baseLightBlue = Color("light_blue")

    private static func Color(_ key: String) -> UIColor {
        if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
            return color
        }
        
        return .black
    }
}
