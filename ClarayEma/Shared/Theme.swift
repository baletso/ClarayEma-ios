//
//  Theme.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

/// Design tokens de color (Light mode).
enum Theme {
    // Base
    static let surface      = Color(hex: "#7BCAFF")  // Agua
    static let shell        = Color(hex: "#FFF8DE")  // Blanco cascarón

    // Yolks
    static let yolk         = Color(hex: "#FFDB3C")  // Amarillo yEma (genérico)
    static let yolkLiquid   = Color(hex: "#EA5515")  // Naranjo líquido (a la copa)
    static let yolkSoft     = Color(hex: "#F8B62D")  // Anaranjado suave (semiduro)
    static let yolkHard     = Color(hex: "#FFEE00")  // Amarillo duro

    // Textos y trazos
    static let textPrimary  = Color(hex: "#57331F")  // Marrón cascarón
    static let textOnYolk   = Color(hex: "#FFFFFF")  // texto sobre yema/CTA
    static let textOnShell  = Color(hex: "#57331F")  // por claridad

    // CTA
    static let cta          = Color(hex: "#FFEE00")  // puedes ajustar luego
    static let ctaStroke    = Color(hex: "#57331F")  // borde del botón

    // Estados
    static let success      = Color(hex: "#64C27A")  // Verde éxito
    static let error        = Color(hex: "#FF6B6B")  // Rojo error
    static let graySoft     = Color(hex: "#F2F2F2")  // Gris suave
}
