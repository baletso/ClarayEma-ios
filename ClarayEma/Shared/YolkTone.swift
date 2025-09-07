//
//  YolkTone.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

enum YolkTone {
    case liquid   // naranja intenso
    case soft     // anaranjado suave
    case hard     // amarillo

    var color: Color {
        switch self {
        case .liquid: return Theme.yolkLiquid
        case .soft:   return Theme.yolkSoft
        case .hard:   return Theme.yolkHard
        }
    }
}
