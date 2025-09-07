//
//  ContentContainer.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

struct ContentContainer<Content: View>: View {
    /// Máximo de ancho para centrar en pantallas grandes (opcional).
    var maxWidth: CGFloat? = 600
    /// Padding lateral interno de la caja (tu 20 pt).
    var horizontalPadding: CGFloat = 20
    /// Separación superior respecto del header.
    var topSpacing: CGFloat = 16

    @ViewBuilder var content: () -> Content

    var body: some View {
        HStack {
            Spacer(minLength: 0)
            VStack(alignment: .leading, spacing: 0) {
                Spacer().frame(height: topSpacing)
                content()
            }
            .padding(.horizontal, horizontalPadding)
            .frame(maxWidth: maxWidth ?? .infinity, alignment: .leading)
            Spacer(minLength: 0)
        }
        .frame(maxWidth: .infinity, alignment: .top)
    }
}
