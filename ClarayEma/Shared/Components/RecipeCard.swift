//
//  recipeCard.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

// Constantes del componente (puedes mover a tus UIConstants si quieres)
private enum CardUI {
    static let screenPadding: CGFloat   = 20    // borde pantalla
    static let innerPadding: CGFloat    = 16    // padding interno card
    static let itemSpacing: CGFloat     = 16    // separación entre yema / texto / chevron
    static let yolkSize: CGFloat        = 64
    static let chevronWidth: CGFloat    = 24
    static let cornerRadius: CGFloat    = 20
    static let strokeWidth: CGFloat     = 2
}

struct RecipeCard: View {
    let title: String
    let subtitle: String
    let timeText: String       // ej. "5 min"
    let yolkTone: YolkTone
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            // Caja
            HStack(spacing: CardUI.itemSpacing) {

                // 1) Yema (tamaño fijo)
                YolkBadge(kind: .color(yolkTone.color), size: CardUI.yolkSize)
                    .fixedSize()

                // 2) Texto ocupa el espacio restante (alto flexible)
                VStack(alignment: .leading, spacing: 8) {

                    // Título + tiempo en una misma línea
                    Text("\(title): \(timeText)")
                        .font(AppTypography.h2)
                        .foregroundStyle(Theme.textPrimary)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)

                    // Descripción (sin corte, alto flexible)
                    Text(subtitle)
                        .font(AppTypography.body)
                        .foregroundStyle(Theme.textPrimary)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, alignment: .leading) // <- se expande entre yema y chevron

                // 3) Chevron (tamaño fijo)
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(Theme.textPrimary.opacity(0.65))
                    .frame(width: CardUI.chevronWidth, alignment: .trailing)
            }
            .padding(CardUI.innerPadding)
            .background(
                RoundedRectangle(cornerRadius: CardUI.cornerRadius)
                    .fill(Color.white)
            )
            .overlay(
                // Borde 2 pt con “inset” para calzar con Figma
                RoundedRectangle(cornerRadius: CardUI.cornerRadius)
                    .inset(by: 1)
                    .stroke(Theme.textPrimary, lineWidth: CardUI.strokeWidth)
            )
            .clipShape(RoundedRectangle(cornerRadius: CardUI.cornerRadius))
            .shadow(color: .black.opacity(0.06), radius: 12, y: 6)
            .contentShape(RoundedRectangle(cornerRadius: CardUI.cornerRadius))
        }
        .buttonStyle(.plain)
        .frame(maxWidth: .infinity, alignment: .center) // que la caja crezca a lo ancho
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(title), \(timeText). \(subtitle)")
        .accessibilityAddTraits(.isButton)
    }
}
