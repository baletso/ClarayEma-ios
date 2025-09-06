//
//  ColorHEX.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

extension Color {

    /// Inicializa Color desde un HEX.
    /// Soporta: #RGB, #ARGB, #RRGGBB, #AARRGGBB
    /// - Parameters:
    ///   - hex: cadena con o sin '#'
    ///   - alpha: si lo pasas, fuerza ese alfa (0...1)
    init(hex: String, alpha: Double? = nil) {
        let cleaned = hex
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .trimmingCharacters(in: CharacterSet(charactersIn: "#"))
            .uppercased()

        var r: UInt64 = 0, g: UInt64 = 0, b: UInt64 = 0, a: UInt64 = 255

        func scan(_ s: String) -> UInt64? {
            var v: UInt64 = 0
            return Scanner(string: s).scanHexInt64(&v) ? v : nil
        }

        switch cleaned.count {
        case 3: // RGB (12-bit) -> duplica nibble
            guard let v = scan(cleaned) else { self = Color.gray.opacity(0.2); return }
            r = ((v >> 8) & 0xF) * 17
            g = ((v >> 4) & 0xF) * 17
            b = ( v       & 0xF) * 17

        case 4: // ARGB (16-bit)
            guard let v = scan(cleaned) else { self = Color.gray.opacity(0.2); return }
            a = ((v >> 12) & 0xF) * 17
            r = ((v >> 8)  & 0xF) * 17
            g = ((v >> 4)  & 0xF) * 17
            b = ( v        & 0xF) * 17

        case 6: // RRGGBB (24-bit)
            guard let v = scan(cleaned) else { self = Color.gray.opacity(0.2); return }
            r = (v >> 16) & 0xFF
            g = (v >> 8)  & 0xFF
            b =  v        & 0xFF

        case 8: // AARRGGBB (32-bit)
            guard let v = scan(cleaned) else { self = Color.gray.opacity(0.2); return }
            a = (v >> 24) & 0xFF
            r = (v >> 16) & 0xFF
            g = (v >> 8)  & 0xFF
            b =  v        & 0xFF

        default:
            self = Color.gray.opacity(0.2)
            return
        }

        let finalAlpha = alpha ?? Double(a) / 255.0
        self = Color(.sRGB,
                     red:   Double(r) / 255.0,
                     green: Double(g) / 255.0,
                     blue:  Double(b) / 255.0,
                     opacity: finalAlpha)
    }
}
