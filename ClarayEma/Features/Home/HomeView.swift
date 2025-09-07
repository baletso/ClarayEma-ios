//
//  HomeView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct HomeView: View {
    private let recipes: [Recipe] = [
        .init(title: "A la copa",
              subtitle: "Clara cuajada – yEma líquida, ideal para comer en taza con cuchara.",
              timeMinutes: 5,
              yolkColor: Theme.yolkLiquid),
        .init(title: "Semiduros",
              subtitle: "Clara firme y yEma cremosa, perfecto para sándwiches o ensaladas.",
              timeMinutes: 10,
              yolkColor: Theme.yolkSoft),
        .init(title: "Duros",
              subtitle: "Clara y yEma sólidas, para picar o rellenar.",
              timeMinutes: 12,
              yolkColor: Theme.yolkHard)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Spacing.xl) {

                // Header
                Text("Elige una receta")
                    .font(AppTypography.h1)
                    .foregroundStyle(Theme.textPrimary)
                    .padding(.top, Spacing.xl)

                // Cards
                VStack(spacing: Spacing.lg) {
                    ForEach(recipes) { r in
                        RecipeCard(
                            title: r.title,
                            subtitle: r.subtitle,
                            timeText: "\(r.timeMinutes) min",
                            yolkColor: r.yolkColor
                        ) {
                            // Navegación a Timer (lo conectaremos luego)
                            print("Tap en \(r.title)")
                        }
                    }
                }
            }
            .padding(.horizontal, Spacing.xl)
            .padding(.bottom, Spacing.xl)
        }
        .background(Theme.surface.ignoresSafeArea())
        .navigationTitle("") // sin título del NavBar
        .navigationBarHidden(true)
    }
}
