//
//  AppHeader.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

struct AppHeader: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            GeometryReader { geo in
                Image("logo-header-app")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: min(geo.size.width * 0.5, 240) // 50% del ancho, máximo 240pt
                    )
                    .accessibilityLabel("Clara yEma")
                    .frame(maxWidth: .infinity, alignment: .center) // centrar dentro del GeometryReader
            }
            .frame(height: 80) // alto suficiente para contener el logo
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Theme.surface)
    }
}
