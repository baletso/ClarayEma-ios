//
//  recipeCard.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct RecipeCard: View {
    let title: String
    let subtitle: String
    let timeText: String
    let yolkColor: Color
    var onTap: () -> Void = {}

    var body: some View {
        Button(action: onTap) {
            HStack(spacing: Spacing.lg) {

                // “yema” circular (si luego usas imagen, reemplaza este ZStack)
                ZStack {
                    Circle()
                        .fill(yolkColor)
                        .frame(width: 54, height: 54)
                        .shadow(color: Shadow.soft, radius: 6, y: 3)

                    // pequeño brillo (opcional, para acercarse a tu Figma)
                    Circle()
                        .fill(.white.opacity(0.25))
                        .frame(width: 22, height: 22)
                        .offset(x: 10, y: -10)
                }

                VStack(alignment: .leading, spacing: 6) {
                    // Título + tiempo
                    HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text(title)
                            .font(AppTypography.h2)
                            .foregroundStyle(Theme.textPrimary)

                        Text("· \(timeText)")
                            .font(AppTypography.note)
                            .foregroundStyle(Theme.textPrimary.opacity(0.7))
                    }

                    Text(subtitle)
                        .font(AppTypography.body)
                        .foregroundStyle(Theme.textPrimary)
                        .lineLimit(2)
                }

                Spacer(minLength: 8)

                // Chevron
                Image(systemName: "chevron.right")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(Theme.textPrimary.opacity(0.6))
            }
            .padding(Spacing.lg)
            .background(
                RoundedRectangle(cornerRadius: Radius.lg, style: .continuous)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: Radius.lg, style: .continuous)
                    .stroke(Theme.ctaStroke.opacity(0.4), lineWidth: 1)
            )
            .shadow(color: Shadow.soft, radius: 8, y: 4)
        }
        .buttonStyle(.plain) // no heredar tint de Button
        .contentShape(Rectangle())
        .accessibilityElement(children: .combine)
    }
}

// MARK: - Preview
#Preview("RecipeCard") {
    VStack(spacing: 16) {
        RecipeCard(
            title: "A la copa",
            subtitle: "Clara cuajada – yEma líquida, ideal para comer en taza con cuchara.",
            timeText: "5 min",
            yolkColor: Theme.yolkLiquid
        )

        RecipeCard(
            title: "Semiduros",
            subtitle: "Clara firme y yEma cremosa, perfecto para sándwiches o ensaladas.",
            timeText: "10 min",
            yolkColor: Theme.yolkSoft
        )

        RecipeCard(
            title: "Duros",
            subtitle: "Clara y yEma sólidas, para picar o rellenar.",
            timeText: "12 min",
            yolkColor: Theme.yolkHard
        )
    }
    .padding(Spacing.xl)
    .background(Theme.surface)
}
