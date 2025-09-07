//
//  Typography.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

enum AppTypography {
    static let h1  = Font.custom(AppFontName.fredokaSemiBold, size: 32, relativeTo: .title)
    static let h2  = Font.custom(AppFontName.fredokaMedium,   size: 24, relativeTo: .title2)
    static let h3  = Font.custom(AppFontName.fredokaMedium,   size: 20, relativeTo: .title3)

    static let cta = Font.custom(AppFontName.fredokaSemiBold, size: 18, relativeTo: .headline)
    static let btn = Font.custom(AppFontName.fredokaMedium,   size: 16, relativeTo: .subheadline)

    static let body = Font.custom(AppFontName.fredokaRegular, size: 16, relativeTo: .body)
    static let note = Font.custom(AppFontName.fredokaRegular, size: 14, relativeTo: .footnote)
}
