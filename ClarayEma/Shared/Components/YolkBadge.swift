//
//  YolkBadge.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

struct YolkBadge: View {
    enum Kind {
        case color(Color)
    }

    let kind: Kind
    let size: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: size, height: size)

            Circle()
                .fill(Color.white.opacity(0.35))
                .frame(width: size * 0.25, height: size * 0.25)
                .offset(x: -size * 0.2, y: -size * 0.2)
        }
    }

    private var color: Color {
        switch kind {
        case .color(let c): return c
        }
    }
}
